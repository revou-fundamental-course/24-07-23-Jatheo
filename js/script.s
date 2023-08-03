const slider = document.getElementById('slider');
const images = slider.getElementsByTagName('img');
let currentImageIndex = 0;

function showNextImage() {
    images[currentImageIndex].style.transform = 'translateX(100%)';
    currentImageIndex = (currentImageIndex + 1) % images.length;
    images[currentImageIndex].style.transform = 'translateX(-1)';
}

setInterval(showNextImage, 3000); // Change slide every 3 seconds 

const form = document.getElementById('inquiryForm');

form.addEventListener('submit', function (event) {
    event.preventDefault();
    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const destination = document.getElementById('destination').value;

    if (!name || !email || !destination) {
        alert('Please fill in all fields.');
        return;
    }

    // You can now handle the form data, e.g., send it to a server, store it in a database, etc.

    // Clear form fields after submission
    form.reset();

    // Show a success message to the user (you can customize this)
    alert('Your inquiry has been submitted successfully!');
});
