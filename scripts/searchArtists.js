// Author: Antonio Keefe	Updated: 11/08/2024
// JavaScript & AJAX: JavaScript to handle form submission and display results
// Retrieve the selected style/category from the form.
// Send request request to server to fetch artists matching criteria.
// Dynamically display/update a table with results.

//Function to fetch data from the server and populate results
async function searchArtists() {
    const style = document.getElementById('styles').value;
    const category = document.getElementById('category').value;

    try {
        const response = await fetch(`/search?style=${style}&category=${category}`);
        if (!response.ok) {
            throw new Error('Network response was not ok');
        }
        const artists = await response.json();

        const resultsDiv = document.getElementById('results');
        resultsDiv.innerHTML = ''; // Clear previous results

        if (artists.length === 0) {
            resultsDiv.innerHTML = '<p>No artists found.</p>';
        } else {
            const table = document.createElement('table');
            const thead = table.createTHead();
            const tbody = table.createTBody();

            const headerRow = thead.insertRow();
            const headers = ['Name', 'City', 'Phone', 'Email', 'Website', 'License'];

            headers.forEach(headerText => {
                const th = document.createElement('th');
                th.textContent = headerText;
                headerRow.appendChild(th);
            });

            artists.forEach(artist => {
                const row = tbody.insertRow();
                headers.forEach((header, index) => {
                    const cell = row.insertCell();
                    cell.textContent = artist[header.toLowerCase()];
                    cell.setAttribute('data-label', header);
                });
            });

            resultsDiv.appendChild(table);
        }
    } catch (error) {
        console.error('Error fetching search results:', error);
        document.getElementById('results').innerHTML = '<p>Error loading results. Please try again later.</p>';
    }
}


