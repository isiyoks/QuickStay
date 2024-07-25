function adjustCount(field, delta) {
    var input = document.getElementById(field);
    var currentValue = parseInt(input.value, 10);
    currentValue += delta;
    if (currentValue < 0) currentValue = 0;
    input.value = currentValue;
}

function toggleGuestSelector() {
    var selector = document.getElementById('guest-selector');
    var guestButton = document.querySelector('.guest-button');

    // Calculate relative position to the parent (search-box)
    var parentPosition = guestButton.parentElement.getBoundingClientRect();
    var buttonPosition = guestButton.getBoundingClientRect();

    selector.style.top = (buttonPosition.bottom - parentPosition.top + 5) + "px"; // 5px for spacing
    selector.style.left = (buttonPosition.left - parentPosition.left) + "px";
    selector.style.display = (selector.style.display === 'none' || selector.style.display === '') ? 'block' : 'none';
}

let checkInDate = null;
let checkOutDate = null;

flatpickr("#date-range", {
    dateFormat: "m/d/Y",
    minDate: "today",
    mode: "range",
    onChange: function(selectedDates, dateStr, instance) {
        if (selectedDates.length === 2) {
            checkInDate = selectedDates[0];
            checkOutDate = selectedDates[1];
        }
    }
});

document.addEventListener('DOMContentLoaded', function() {
    const destinationInput = document.getElementById('destination');
    const suggestionsList = document.getElementById('suggestions');

    // Function to fetch and display suggestions
    function fetchSuggestions(query) {
        if (query.length > 2) {
            fetch(`https://nominatim.openstreetmap.org/search?format=json&q=${query}`)
                .then(response => response.json())
                .then(data => {
                    suggestionsList.innerHTML = '';

                    data.forEach(item => {
                        const suggestionItem = document.createElement('li');
                        suggestionItem.textContent = item.display_name;

                        suggestionItem.addEventListener('click', () => {
                            destinationInput.value = item.display_name;
                            document.getElementById('latitude').value = item.lat;
                            document.getElementById('longitude').value = item.lon;
                            suggestionsList.innerHTML = '';
                        });

                        suggestionsList.appendChild(suggestionItem);
                    });
                })
                .catch(error => {
                    console.error('Error fetching data:', error);
                });
        } else {
            suggestionsList.innerHTML = '';
        }
    }

    // Input event listener
    destinationInput.addEventListener('input', function() {
        const query = this.value;
        fetchSuggestions(query); // Fetch and display suggestions on input
    });

    // Focus event listener to redisplay suggestions
    destinationInput.addEventListener('focus', function() {
        const query = this.value;
        fetchSuggestions(query); // Fetch and display suggestions on focus
    });

    // Hide suggestions when clicking outside
    document.addEventListener('click', function(event) {
        if (!destinationInput.contains(event.target) && !suggestionsList.contains(event.target)) {
            suggestionsList.innerHTML = '';
        }
    });
});

// const destinationInput = document.getElementById('destination');
// console.log("Destination input element:", destinationInput); // Verify element is found
// destinationInput.addEventListener('input', function() {
//     console.log("Input event triggered!"); // Check if the event listener is working
//     const query = this.value;
//     console.log("Query:", query);
//
//     if (query.length > 2) { // Start searching after 3 characters
//         fetch(`https://nominatim.openstreetmap.org/search?format=json&q=${query}`)
//             .then(response => response.json())
//             .then(data => {
//                 if (data.length > 0) {
//                     // Get latitude and longitude of the first result
//                     const lat = data[0].lat;
//                     const lon = data[0].lon;
//
//                     // Update the hidden input fields
//                     document.getElementById('latitude').value = lat;
//                     document.getElementById('longitude').value = lon;
//                 }
//             })
//             .catch(error => {
//                 console.error('Error fetching data:', error);
//             });
//     } else {
//         // Clear the hidden input fields if the query is too short
//         document.getElementById('latitude').value = '';
//         document.getElementById('longitude').value = '';
//     }
// });