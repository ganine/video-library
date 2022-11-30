import React from "react";

import "./Video.css";

const Video = (props) => {
  const { title, thumbnail } = props;

  return (
    <div className="card video">
      <div className="card-body">
        <img src={thumbnail} className="card-img-top" alt={title}/>
      </div>
    </div>
  );
};

export default Video;
