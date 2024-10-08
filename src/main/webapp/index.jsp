   <html>
<head>
  <link rel="icon" type="image/x-icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Emblem_of_Andhra_Pradesh.svg/450px-Emblem_of_Andhra_Pradesh.svg.png">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <!-- Font Awesome CDN -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />

  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
    }

    .header {
      display: flex;
      justify-content: space-between;
      border: 2px solid #ddd; /* Optional: to visualize the section boundary */
    }

    .gov img {
      margin-left: 5px;
      margin-top: 5px;
    }

    .cbn img {
      margin-left: 5px;
      margin-top: 5px;
    }

    .middle {
      background-size: cover;
      background-position: center;
      width: 100%;
      padding: 20px;
    }

    .left-side img {
      width: 100%;
      height: 100%; /* Increased the height */
    }

    h2 {
      color: black;
    }

    .card-title {
      font-size: 24px;
    }

    .card-body h1 {
      font-size: 48px;
      margin: 0;
    }

    /* Custom card colors */
    .bg-problems-solved {
      background-color: #28a745; /* Green for Problems Solved */
      color: white;
    }

    .bg-active-problems {
      background-color: #dc3545; /* Red for Active Problems */
      color: white;
    }

    /* Add shadow effect to cards on hover */
    .card {
      transition: box-shadow 0.3s ease;
    }

    .card:hover {
      box-shadow: 20px 20px 20px rgba(0, 0, 0, 0.3); /* Shadow on hover */
    }
  </style>
</head>

<body>

  <section class="header">
    <div class="gov">
      <img src="https://www.ap.gov.in/assets/images/governor.jpg" width="100px" height="100px" />
    </div>
    <div class="logo">
      <img src=" https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Emblem_of_Andhra_Pradesh.svg/450px-Emblem_of_Andhra_Pradesh.svg.png" alt="Image" width="200px" height="100px" />
    </div>
    <div class="cbn">
      <img src="https://www.ap.gov.in/assets/images/apnewcm.png" width="100px" height="100px" />
    </div>
  </section>

  <!-- Updated Navbar with Icons and Dark Pink Background -->
  <nav class="navbar navbar-expand-lg" style="background-color: #ff1493;">
    <div class="container-fluid">
      <div class="navbar-nav d-flex justify-content-around w-100">
        <a class="nav-link" href="index.jsp">
          <i class="fas fa-home"></i> Home
        </a>
        <a class="nav-link" href="Sinup">
          <i class="fas fa-user-plus"></i> Signup
        </a>
        <a class="nav-link" href="Login">
          <i class="fas fa-sign-in-alt"></i> Login
        </a>
        <a class="nav-link" href="index.jsp">
          <i class="fas fa-info-circle"></i> About Us
        </a>
      </div>
    </div>
  </nav>

  <section class="middle">
    <div class="container">
      <div class="row">
        <!-- Left Side Image -->
        <div class="col-md-6 left-side">
          <img src="https://img.freepik.com/premium-vector/communication-people-search-solutions-problems_158757-239.jpg" alt="Communication Image">
        </div>

        <!-- Right Side Content -->
        <div class="col-md-6">
          <h2>Welcome to the feedback form for the "Interaction Between Citizens and Politicians" platform. We aim to improve communication, transparency, and engagement between citizens and elected representatives. Your responses will help shape the platform to better serve its users.</h2>

          <!-- Card for Problems Solved (Green) -->
          <div class="card bg-problems-solved mb-3">
            <div class="card-body text-center">
              <h1 id="problems-solved">0</h1> <!-- Set initial value to 0 -->
              <p class="card-title">Problems Solved</p>
            </div>
          </div>

          <!-- Card for Active Problems (Red) -->
          <div class="card bg-active-problems">
            <div class="card-body text-center">
              <h1 id="active-problems">0</h1> <!-- Set initial value to 0 -->
              <p class="card-title">Active Problems</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <script>
    // JavaScript function to count from 0 to 500 for "Problems Solved"
    let countSolved = 0;
    const maxSolved = 500;
    const incrementSpeedSolved = 10; // Speed of increment (in milliseconds)

    const counterSolved = setInterval(() => {
      if (countSolved < maxSolved) {
        countSolved++;
        document.getElementById('problems-solved').innerText = countSolved;
      } else {
        clearInterval(counterSolved); // Stop the interval when the count reaches 500
      }
    }, incrementSpeedSolved);

    // JavaScript function to count from 0 to 300 for "Active Problems"
    let countActive = 0;
    const maxActive = 300;
    const incrementSpeedActive = 10; // Speed of increment (in milliseconds)

    const counterActive = setInterval(() => {
      if (countActive < maxActive) {
        countActive++;
        document.getElementById('active-problems').innerText = countActive;
      } else {
        clearInterval(counterActive); // Stop the interval when the count reaches 300
      }
    }, incrementSpeedActive);
  </script>

</body>
</html>
   