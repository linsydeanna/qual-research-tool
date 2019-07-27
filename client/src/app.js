import React, { Component } from "react";
import "./styles/app.css";

class App extends Component {
  componentDidMount() {
    fetch("http://localhost:4000/interviews")
      .then(response => response.json())
      .then(json => console.log(json))
      .catch(error => console.log(error));
  }
  render() {
    return <div className="app" />;
  }
}

export default App;
