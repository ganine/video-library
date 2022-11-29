import React from "react";
import { Link } from "react-router-dom";
import VideoForm from "../components/VideoForm";

const UploadPage = () => {

  return (
    <div className="upload-page">
      <Link to={`/`}>
        Video List
      </Link>

      <VideoForm />
    </div>
  );
};

export default UploadPage;
