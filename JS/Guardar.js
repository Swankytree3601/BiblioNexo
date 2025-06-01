function Guardar(e) {
    e.preventDefault(); // Evita que el formulario se recargue

    const nombre = document.getElementById("nombre").value;
    const apellido = document.getElementById("apellido").value;
    const correo = document.getElementById("correo").value;
    const correo2 = document.getElementById("correo2").value;
    const contraseña = document.getElementById("clave").value;
    const fechaNacimiento = document.getElementById("edad").value;
    const genero = document.querySelector('input[name="genero"]:checked')?.value || "";

    // Validaciones
    if (correo !== correo2) {
        alert("Los correos electrónicos no coinciden.");
        return;
    }

    if (!genero) {
        alert("Por favor, seleccione un género.");
        return;
    }

    db.collection("users").add({
        nombre: nombre,
        apellido: apellido,
        correo: correo,
        contraseña: contraseña,
        fechaNacimiento: fechaNacimiento,
        genero: genero
    })
    .then((docRef) => {
        alert("Registro exitoso");
        document.getElementById("registroForm").reset();
    })
    .catch((error) => {
        console.error("Error al guardar: ", error);
        alert("Error en el registro");
    });
}
