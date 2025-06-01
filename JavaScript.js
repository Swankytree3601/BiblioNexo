 document.querySelectorAll(".btn-mostrar").forEach(button => {
            button.addEventListener("click", () => {
                let sinopsis = button.previousElementSibling;
                sinopsis.classList.toggle("expandida");
                button.textContent = sinopsis.classList.contains("expandida") ? "Mostrar menos" : "Mostrar más";
            });
        });