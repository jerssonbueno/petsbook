import React, { useState } from 'react';
import Formulario from './Formulario';
import Usuario from './Usuario';

const ListaUsuarios = () => {
  // Mi lista principal de usuarios empieza vacía
  const [usuarios, setUsuarios] = useState([]);

  // Con esta función agrego los nuevos registros al arreglo que ya tengo
  const agregarUsuario = (nuevo) => {
    setUsuarios([...usuarios, nuevo]);
  };

  return (
    <div style={{ padding: '20px' }}>
      <h2>Mi Lista de Usuarios</h2>
      
      {/* Aquí pongo mi formulario y le paso la función para agregar */}
      <Formulario agregarUsuario={agregarUsuario} />

      <hr />

      {/* Si no hay nadie registrado muestro un aviso, si no, dibujo la lista */}
      {usuarios.length === 0 ? (
        <p>No hay registros en este momento.</p>
      ) : (
        usuarios.map((u, index) => (
          <Usuario key={index} usuario={u} />
        ))
      )}
    </div>
  );
};

export default ListaUsuarios;