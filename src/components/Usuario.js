import React from 'react';

// Aquí defino cómo se va a ver cada usuario en la lista
const Usuario = ({ usuario }) => {
  return (
    <div style={{ border: '1px solid #ddd', padding: '10px', margin: '10px 0', borderRadius: '5px' }}>
      {/* Muestro el nombre y el correo que recibo por medio de las propiedades */}
      <p><strong>Nombre:</strong> {usuario.nombre}</p>
      <p><strong>Correo:</strong> {usuario.email}</p>
    </div>
  );
};

export default Usuario;