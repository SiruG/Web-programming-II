<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Local Bakery - Home</title>
    <link
            href="https://fonts.googleapis.com/css2?family=Pacifico&family=Poppins:wght@600&family=Open+Sans&display=swap"
            rel="stylesheet"
    />
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="styles.css" />
    <style>
        .fixed-size-img {
            width: 100%;
            height: 250px;
            object-fit: cover;
        }
        .card-body {
            display: flex;
            flex-direction: column;
            justify-content: center;
            text-align: center;
        }
        .center-title {
            text-align: center;
        }
        section.contact-box,
        section.form-section,
        section.order-section {
            background-color: #fff;
            padding: 2.5rem 2rem;
            border-radius: 0.375rem;
            max-width: 800px;
            margin: 3rem auto;
        }
        .form-section h2,
        .order-section h2,
        section.contact-box h2 {
            margin-bottom: 1.5rem;
        }

        .contact-box p {
            text-align: center;
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a
                class="navbar-brand logo"
                href="index.html"
                style="font-family: 'Pacifico', cursive"
        >Local Bakery</a
        >
        <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarHome"
        >
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarHome">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="index.html">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="menu.html">Menu</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.html">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="feedback.html">Feedback</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="order.html">Order</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.html">About Us</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<main class="container my-4">
    <!-- Welcome Section -->
    <section class="text-center mb-5">
        <h2>Welcome to Local Bakery</h2>
        <p>
            Enjoy the freshest breads, cakes, and pastries baked daily with love
            and care!
        </p>
    </section>

    <!-- Gallery Section -->
    <section class="mb-5">
        <div class="row g-3">
            <div class="col-12 col-md-4 text-center">
                <img
                        src="https://t4.ftcdn.net/jpg/15/10/09/85/360_F_1510098551_f0y3jIT5ErjMClBAKEMoLZSksI7GkxKp.jpg"
                        alt="Bakery Shopfront"
                        class="fixed-size-img rounded"
                />
                <p class="mt-2">Our Cozy Bakery Shop</p>
            </div>
            <div class="col-12 col-md-4 text-center">
                <img
                        src="https://store.mintel.com/wp-content/uploads/2023/11/Baked-Goods-1.jpg"
                        alt="Bakery Items"
                        class="fixed-size-img rounded"
                />
                <p class="mt-2">Fresh Bakery Items</p>
            </div>
            <div class="col-12 col-md-4 text-center">
                <img
                        src="https://img.freepik.com/premium-photo/assorted-fancy-cakes-shop-window-cafe_267929-725.jpg"
                        alt="Cake Items"
                        class="fixed-size-img rounded"
                />
                <p class="mt-2">Delicious Cake Items</p>
            </div>
        </div>
    </section>

    <!-- About Us Section -->
    <section class="contact-box">
        <h2 class="center-title mb-3">About Us</h2>
        <p>
            Local Bakery has been serving fresh, delicious baked goods to our
            community for over 10 years. Our passion is baking with quality
            ingredients and heartfelt care to bring you the best experience every
            day.
        </p>
    </section>

    <!-- Products Section -->
    <section>
        <h2 class="mb-4 text-center">Our Fresh Bakes</h2>
        <div class="row justify-content-center g-4 mb-4">
            <div class="col-12 col-md-4 col-lg-3">
                <div class="card h-100">
                    <img
                            src="https://inbloombakery.com/wp-content/uploads/2022/04/chocolate-drip-cake-featured-image-500x500.jpg"
                            class="card-img-top fixed-size-img"
                    />
                    <div class="card-body">
                        <h5 class="card-title">Chocolate Cake</h5>
                        <p class="card-text">$15.00</p>
                        <a href="product1.html" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4 col-lg-3">
                <div class="card h-100">
                    <img
                            src="https://butternutbakeryblog.com/wp-content/uploads/2022/02/blueberry-muffins.jpg"
                            class="card-img-top fixed-size-img"
                    />
                    <div class="card-body">
                        <h5 class="card-title">Blueberry Muffins</h5>
                        <p class="card-text">$8.00</p>
                        <a href="product2.html" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4 col-lg-3">
                <div class="card h-100">
                    <img
                            src="https://shop.provisions.com.au/cdn/shop/products/croissant_2089853b_ce3bcf6e-950f-45ff-b868-9a189e516a7e_grande.jpg?v=1571724498"
                            class="card-img-top fixed-size-img"
                    />
                    <div class="card-body">
                        <h5 class="card-title">French Croissant</h5>
                        <p class="card-text">$4.00</p>
                        <a href="product3.html" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row justify-content-center g-4">
            <div class="col-12 col-md-4 col-lg-3">
                <div class="card h-100">
                    <img
                            src="https://therecipecritic.com/wp-content/uploads/2020/02/cheesy_garlic_bread.jpg"
                            class="card-img-top fixed-size-img"
                    />
                    <div class="card-body">
                        <h5 class="card-title">Cheese Bread</h5>
                        <p class="card-text">$6.00</p>
                        <a href="product4.html" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4 col-lg-3">
                <div class="card h-100">
                    <img
                            src="https://recipesofholly.com/wp-content/uploads/2020/06/Strawberry-Tart-4.jpg"
                            class="card-img-top fixed-size-img"
                    />
                    <div class="card-body">
                        <h5 class="card-title">Strawberry Tart</h5>
                        <p class="card-text">$5.50</p>
                        <a href="product5.html" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section class="contact-section">
        <h2>Contact Us</h2>
        <p><strong>Email</strong> <br />localbakery@gmail.com</p>
        <p>
            <strong>Phone</strong> <br />
            +977 9856875245
        </p>
        <p><strong>Address</strong> <br />Bhaktapur, Kausaltar</p>
        <p>
            <strong>Opening Hours</strong><br />Mon–Sat: 7 AM – 7 PM<br />Sun: 8
            AM – 2 PM
        </p>
    </section>

    <!-- Feedback Section -->
    <section class="form-section">
        <h2 class="text-center">Customer Feedback</h2>
        <div
                id="feedbackSuccess"
                class="alert alert-success text-center d-none"
                role="alert"
        >
            ✅ Your feedback has been submitted successfully! Thank you.
        </div>
        <form id="feedbackForm" class="needs-validation" novalidate>
            <div class="mb-3">
                <label for="item" class="form-label">Select an item:</label>
                <select id="item" name="item" class="form-select" required>
                    <option value="" disabled selected>-- Select an item --</option>
                    <option value="Chocolate Cake">Chocolate Cake</option>
                    <option value="Blueberry Muffins">Blueberry Muffins</option>
                    <option value="French Croissant">French Croissant</option>
                    <option value="Cheese Bread">Cheese Bread</option>
                    <option value="Strawberry Tart">Strawberry Tart</option>
                </select>
                <div class="invalid-feedback">Please select an item.</div>
            </div>
            <div class="mb-3">
                <label for="feedback" class="form-label">Your Feedback:</label>
                <textarea
                        id="feedback"
                        name="feedback"
                        class="form-control"
                        rows="5"
                        placeholder="Write your feedback here..."
                        required
                ></textarea>
                <div class="invalid-feedback">Please provide your feedback.</div>
            </div>
            <button type="submit" class="btn btn-primary w-100">
                Submit Feedback
            </button>
        </form>
    </section>

    <!-- Order Section -->
    <section class="order-section">
        <h2 class="text-center">Place Your Order</h2>
        <div
                id="orderSuccess"
                class="alert alert-success text-center d-none"
                role="alert"
        >
            ✅ Your order has been placed successfully! We’ll contact you shortly.
        </div>
        <form id="orderForm" class="needs-validation" novalidate>
            <div class="mb-3">
                <label for="order-name" class="form-label">Name:</label>
                <input
                        type="text"
                        id="order-name"
                        name="order-name"
                        class="form-control"
                        placeholder="Your full name"
                        required
                />
                <div class="invalid-feedback">Please enter your name.</div>
            </div>
            <div class="mb-3">
                <label for="order-email" class="form-label">Email:</label>
                <input
                        type="email"
                        id="order-email"
                        name="order-email"
                        class="form-control"
                        placeholder="Your email"
                        required
                />
                <div class="invalid-feedback">Please enter a valid email.</div>
            </div>
            <div class="mb-3">
                <label for="order-phone" class="form-label">Phone Number:</label>
                <input
                        type="tel"
                        id="order-phone"
                        name="order-phone"
                        class="form-control"
                        placeholder="Your phone number"
                        required
                />
                <div class="invalid-feedback">Please enter your phone number.</div>
            </div>
            <div class="mb-3">
                <label for="order-item" class="form-label">Select Item:</label>
                <select
                        id="order-item"
                        name="order-item"
                        class="form-select"
                        required
                >
                    <option value="" disabled selected>-- Select an item --</option>
                    <option value="Chocolate Cake">Chocolate Cake</option>
                    <option value="Blueberry Muffins">Blueberry Muffins</option>
                    <option value="French Croissant">French Croissant</option>
                    <option value="Cheese Bread">Cheese Bread</option>
                    <option value="Strawberry Tart">Strawberry Tart</option>
                </select>
                <div class="invalid-feedback">Please select an item.</div>
            </div>
            <div class="mb-3">
                <label for="order-quantity" class="form-label">Quantity:</label>
                <input
                        type="number"
                        id="order-quantity"
                        name="order-quantity"
                        class="form-control"
                        min="1"
                        max="20"
                        value="1"
                        required
                />
                <div class="invalid-feedback">Please enter a quantity (1–20).</div>
            </div>
            <div class="mb-3">
                <label for="order-address" class="form-label"
                >Delivery Address:</label
                >
                <textarea
                        id="order-address"
                        name="order-address"
                        class="form-control"
                        rows="3"
                        placeholder="Enter delivery address"
                        required
                ></textarea>
                <div class="invalid-feedback">
                    Please provide your delivery address.
                </div>
            </div>
            <button type="submit" class="btn btn-primary w-100">
                Place Order
            </button>
        </form>
    </section>
</main>

<!-- Footer -->
<footer class="bg-dark text-white text-center py-3">
    <p>
        Contact us: <strong>localbakery@gmail.com</strong> | 📞 +977 9856875245
    </p>
    <p class="mb-0">&copy; 2025 Local Bakery. All rights reserved.</p>
</footer>

<!-- Firebase Scripts -->
<script src="https://www.gstatic.com/firebasejs/9.23.0/firebase-app-compat.js"></script>
<script src="https://www.gstatic.com/firebasejs/9.23.0/firebase-database-compat.js"></script>

<script>
    const firebaseConfig = {
        apiKey: "AIzaSyA7tLw1vLi_c43U26uMJHAcbwXHwWG3X8A",
        authDomain: "mobile-application-adfb4.firebaseapp.com",
        projectId: "mobile-application-adfb4",
        storageBucket: "mobile-application-adfb4.firebasestorage.app",
        messagingSenderId: "501175634025",
        appId: "1:501175634025:web:856f3cceb289cc684a7af8",
    };

    firebase.initializeApp(firebaseConfig);
    const database = firebase.database();

    // Feedback Form
    const feedbackForm = document.getElementById("feedbackForm");
    const feedbackSuccess = document.getElementById("feedbackSuccess");

    feedbackForm.addEventListener("submit", (event) => {
        event.preventDefault();
        if (!feedbackForm.checkValidity()) {
            event.stopPropagation();
            feedbackForm.classList.add("was-validated");
            return;
        }
        const feedbackData = {
            item: document.getElementById("item").value,
            feedback: document.getElementById("feedback").value,
            timestamp: Date.now(),
        };
        database.ref("feedbacks").push(feedbackData, (error) => {
            if (error) alert("Error saving feedback.");
            else {
                feedbackSuccess.classList.remove("d-none");
                setTimeout(() => feedbackSuccess.classList.add("d-none"), 3000);
                feedbackForm.reset();
                feedbackForm.classList.remove("was-validated");
            }
        });
    });

    // Order Form
    const orderForm = document.getElementById("orderForm");
    const orderSuccess = document.getElementById("orderSuccess");

    orderForm.addEventListener("submit", (event) => {
        event.preventDefault();
        if (!orderForm.checkValidity()) {
            event.stopPropagation();
            orderForm.classList.add("was-validated");
            return;
        }
        const orderData = {
            name: document.getElementById("order-name").value,
            email: document.getElementById("order-email").value,
            phone: document.getElementById("order-phone").value,
            item: document.getElementById("order-item").value,
            quantity: document.getElementById("order-quantity").value,
            address: document.getElementById("order-address").value,
            timestamp: Date.now(),
        };
        database.ref("orders").push(orderData, (error) => {
            if (error) alert("Error saving order.");
            else {
                orderSuccess.classList.remove("d-none");
                setTimeout(() => orderSuccess.classList.add("d-none"), 3000);
                orderForm.reset();
                orderForm.classList.remove("was-validated");
            }
        });
    });
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
