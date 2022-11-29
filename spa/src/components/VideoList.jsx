import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import Video from "../components/Video";
import { listVideos } from "../services/API";

const VideoList = () => {
  const [videos, setVideos] = useState([]);

  useEffect(() => {
    listVideos()
      .then(data => {
        setVideos(data)
      });
  }, []);

  return (
    <div className="video-list">

      <Link to={`/upload`} className="upload-video" />

      {!videos.length ? (
        <p>No videos uploaded yet!</p>
      ) : (
        videos.map((video) => (
          <li>
            <Video
              key={video.id}
              title={video.title}
            />
          </li>
        ))
      )}
    </div>
  );
};

export default VideoList;
