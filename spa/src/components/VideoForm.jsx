import React, {useState, useEffect} from 'react';
import {listCategories, createVideo} from "../services/API";

const VideoForm = props => {
  const [message, setMessage] = useState("");
  const [categories, setCategories] = useState([]);

  const [title, setTitle] = useState("");
  // const [file, setFile] = useState("");
  const [categoryId, setCategoryId] = useState("");

  useEffect(() => {
    listCategories()
      .then(items => { setCategories(items) })
  }, [])

  const submitForm = (event) => {
    event.preventDefault();

    const formData = new FormData(event.target);

    createVideo(formData)
      .then(data => {
        setMessage("Video successfully uploaded");
        setTitle("");
        // setFile("");
        event.target.file.value = null;
        setCategoryId("");
      })
      .catch(errorMessage => {
        setMessage(`Failed to upload video: ${errorMessage}`);
      });
  }

  return (
    <form className="video-form" onSubmit={submitForm}>
      <div>{message}</div>

      <label htmlFor="title">
        Title
        <input
          type="text"
          name="title" 
          value={title}
          onChange={(e) => setTitle(e.target.value)}
          onBlur={(e) => setTitle(e.target.value)}
          required
        />
      </label>

      <p/>
      <label htmlFor="file" >
        File
        <input
          type="file"
          name="file"
          // onChange={(e) => setFile(e.target.files[0])}
          // onBlur={(e) => setFile(e.target.files[0])}
          accept="video/mp4"
          required
        />
      </label>

      <p/>
      <label htmlFor="category_id">
        Category
        <select
          name="category_id"
          value={categoryId}
          onChange={e => setCategoryId(e.target.value)}
          onBlur={e => setCategoryId(e.target.value)}
          required
        >
          <option />
          {categories.map(category => (
            <option key={category.id} value={category.id}>
              {category.name}
            </option>
          ))}
        </select>
      </label>

      <p/>
      <input type="submit" value="Submit" />
    </form>
  );
  
}

export default VideoForm;