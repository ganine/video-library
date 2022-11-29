import React from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import UploadPage from "./pages/UploadPage";

import "./App.css";

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <h1>Video Library</h1>
        <Routes>
          <Route path="/upload" element={<UploadPage />} />
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
