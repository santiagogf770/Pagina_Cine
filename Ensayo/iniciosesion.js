document.getElementById("btnIniciarSesion").addEventListener("click", function(event) {
    // Evitar que el formulario se envíe automáticamente
    event.preventDefault();
    
    // Obtener los valores de los campos
    const usuario = document.getElementById("usuario").value;
    const contraseña = document.getElementById("contraseña").value;

    // Validación simple: Asegurarse de que ambos campos no estén vacíos
    if (usuario && contraseña) {
        // Si el nombre de usuario y la contraseña son correctos, redirigir a la página de ajsx.html
        alert("Inicio de sesión exitoso");
        window.location.href = "ajsx.html";  // Redirige a la página ajsx.html
    } else {
        // Si alguno de los campos está vacío, mostrar un mensaje de error
        alert("Por favor, ingresa un nombre de usuario y contraseña.");
    }
});


