import React from 'react';
import './App.css';
import ListaUsuarios from './components/ListaUsuarios';

function App() {
  return (
    <div className="App">
      {/* Este es el encabezado principal de mi proyecto PetsBook */}
      <header style={{ backgroundColor: '#2c3e50', padding: '20px', color: 'white', textAlign: 'center' }}>
        <h1>PetsBook</h1>
        <p>Plataforma de Gestión de Usuarios y Mascotas</p>
      </header>

      {/* Aquí organizo el contenido central para que no se vea pegado a los bordes */}
      <main style={{ maxWidth: '800px', margin: '0 auto', padding: '20px' }}>
        <div className="container">
          {/* Llamo al componente de la lista para que se muestre todo mi desarrollo */}
          <ListaUsuarios />
        </div>
      </main>

      {/* Un pie de página sencillo para cerrar el diseño del panel */}
      <footer style={{ textAlign: 'center', marginTop: '50px', color: '#888', fontSize: '0.8rem' }}>
        <p>&copy; 2026 PetsBook - Panel de Control</p>
      </footer>
    </div>
  );
}

export default App;