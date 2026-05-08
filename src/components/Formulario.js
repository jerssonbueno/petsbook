import React, { useState } from 'react';

const Formulario = ({ agregarUsuario }) => {
  // Uso estos estados para ir guardando lo que escribo en los campos
  const [nombre, setNombre] = useState('');
  const [email, setEmail] = useState('');

  // Esta parte se encarga de procesar los datos cuando le doy al botón
  const enviarDatos = (e) => {
    e.preventDefault();
    
    // Si los campos tienen algo, mando la info y limpio todo para un nuevo registro
    if (nombre && email) {
      agregarUsuario({ nombre, email });
      setNombre('');
      setEmail('');
    }
  };

  return (
    <form onSubmit={enviarDatos}>
      <h3>Nuevo Registro</h3>
      {/* Con el onChange voy actualizando mi estado mientras escribo */}
      <input 
        type="text" 
        placeholder="Nombre" 
        value={nombre} 
        onChange={(e) => setNombre(e.target.value)} 
      />
      <input 
        type="email" 
        placeholder="Correo" 
        value={email} 
        onChange={(e) => setEmail(e.target.value)} 
      />
      <button type="submit">Agregar</button>
    </form>
  );
};

export default Formulario;