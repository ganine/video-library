import React from "react";
import { Link } from "react-router-dom";
import VideoList from "../components/VideoList";

const HomePage = () => {

  return (
    <div className="home-page">
      <Link to={`/upload`}>
        Upload
      </Link>

      <VideoList />
    </div>
  );
};

export default HomePage;
