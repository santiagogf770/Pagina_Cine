import React, { useState } from 'react';

function RegistroForm() {
  const [nombre, setNombre] = useState('');
  const [correo, setCorreo] = useState('');
  const [contraseña, setContraseña] = useState('');

  const handleSubmit = (event) => {
    event.preventDefault();
    // Aquí enviarías los datos del formulario a tu backend para registrar al usuario
    console.log('Nombre:', nombre);
    console.log('Correo:', correo);
    console.log('Contraseña:', contraseña);
  };

  return (
    <form onSubmit={handleSubmit}>
      <label>
        Nombre:
        <input type="text" value={nombre} onChange={(e) => setNombre(e.target.value)} />
      </label>
      <br />
      <label>
        Correo electrónico:
        <input type="email" value={correo} onChange={(e) => setCorreo(e.target.value)} />
      </label>
      <br />
      <label>
        Contraseña:
        <input type="password" value={contraseña} onChange={(e) => setContraseña(e.target.value)} />
      </label>
      <br />
      <button type="submit">Registrarse</button>
    </form>
  );
}

export default RegistroForm;