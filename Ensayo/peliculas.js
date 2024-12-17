// Variables de la modal de reserva
const openModalBtn = document.getElementById('openModalBtn');
const closeModalBtn = document.getElementById('closeModalBtn');
const reservationModal = document.getElementById('reservationModal');
const reserveBtn = document.getElementById('reserveBtn');

// Variables de la ventana emergente de confirmación
const confirmationModal = document.getElementById('confirmationModal');
const closeConfirmationBtn = document.getElementById('closeConfirmationBtn');
const confirmBtn = document.getElementById('confirmBtn');
const reserveTime = document.getElementById('reserveTime');
const selectedSeats = document.getElementById('selectedSeats');

// Array para almacenar los asientos seleccionados
let selectedSeatsArray = [];

// Función para abrir la modal de reserva
openModalBtn.onclick = function() {
    reservationModal.style.display = "block";
}

// Función para cerrar la modal de reserva
closeModalBtn.onclick = function() {
    reservationModal.style.display = "none";
}

// Función para cerrar la ventana emergente de confirmación
closeConfirmationBtn.onclick = function() {
    confirmationModal.style.display = "none";
}

// Selección de asientos
const seats = document.querySelectorAll('.seat');
seats.forEach(seat => {
    seat.onclick = function() {
        // Si el asiento no está seleccionado, seleccionarlo
        if (!seat.classList.contains('selected')) {
            seat.classList.add('selected');
            selectedSeatsArray.push(seat.id);
        } else {
            // Si ya está seleccionado, deseleccionarlo
            seat.classList.remove('selected');
            selectedSeatsArray = selectedSeatsArray.filter(id => id !== seat.id);
        }

        // Habilitar el botón de reserva solo si hay asientos seleccionados
        if (selectedSeatsArray.length > 0) {
            reserveBtn.disabled = false;
        } else {
            reserveBtn.disabled = true;
        }
    };
});

// Función para realizar la reserva
reserveBtn.onclick = function() {
    // Obtener la hora actual
    const currentTime = new Date().toLocaleString();
    reserveTime.textContent = currentTime;

    // Mostrar los asientos seleccionados
    selectedSeats.textContent = selectedSeatsArray.join(", ");

    // Ocultar la modal de reserva
    reservationModal.style.display = "none";

    // Mostrar la ventana emergente de confirmación
    confirmationModal.style.display = "block";
}

// Función para confirmar la reserva
confirmBtn.onclick = function() {
    alert("Reserva confirmada con éxito!");

    // Limpiar la selección de asientos y reiniciar el botón
    selectedSeatsArray = [];
    seats.forEach(seat => seat.classList.remove('selected'));
    reserveBtn.disabled = true;

    // Cerrar la ventana emergente
    confirmationModal.style.display = "none";
}

