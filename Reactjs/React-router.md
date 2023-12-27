## React Router Dom

### Navbar Component

```bash
// Navbar.jsx

import React from "react";
import { Link } from "react-router-dom";

export default function Navbar() {
  return (
    <>
      <nav>
        <Link to="/">iAkhilesh</Link>
        <div>
          <ul>
            <li>
              <Link to="/">Home</Link>
            </li>
            <li>
              <Link to="/contact">Contact</Link>
            </li>
          </ul>
        </div>
      </nav>
    </>
  );
}
```
### App.jsx

```bash
// App.jsx

import React from "react";
import "./App.css";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Navbar from "./components/Navbar";
import Home from "./components/Home";
import Contact from "./components/Contact";

function App() {
  return (
    <>
      <BrowserRouter>
        <div>
          <Navbar/>
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/contact" element={<Contact />} />
          </Routes>
        </div>
      </BrowserRouter>
    </>
  );
}

export default App;
```
