<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Barre de navigation</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <nav>
            <div class="logo">
                <h1>Umbrella Corporation</h1>
            </div>
                <div class="menu-toggle">&#9776;</div>
            <ul class="menu" id="menu">
                <li><a href="./index.php">Accueil</a></li>
                <li><a href="./ToutPourLArgent.php">Notre devise</a></li>
                <li><a href="./NosMedicament.php">Nos médicaments</a></li>
                <li><a href="./servicesZombi.php">Services</a></li>
                <li>
                    <button id="dark-mode">&#127769;</button>
                </li>
            </ul>
        </nav>
    <!-- ... -->
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                const menuToggle = document.querySelector('.menu-toggle');
                const menu = document.querySelector('#menu');
                const darkModeToggle = document.querySelector('#dark-mode')
                menuToggle.addEventListener('click', function() {
                    menu.classList.toggle('active');
                });
                darkModeToggle.addEventListener('click', function() {
                    document.body.classList.toggle('dark-mode');

                    if (document.body.classList.contains('dark-mode')) {
                        darkModeToggle.innerHTML = "&#9728;"
                    }
                    else {
                        darkModeToggle.innerHTML = "&#127769;"
                    }
                });
            });
        </script>
    <!-- ... -->