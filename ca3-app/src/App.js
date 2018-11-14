import React, { Component } from "react"
import facade from "./apiFacade";
import { BrowserRouter as Router, Route, Switch, NavLink } from "react-router-dom";

class LogIn extends Component {
  constructor(props) {
    super(props);
    this.state = { username: "", password: "", newuser: "", newpw: "", newpw2: "", msg: "" }
  }

  login = (evt) => {
    evt.preventDefault();
    this.props.login(this.state.username, this.state.password);
  }

  onChange = (evt) => {
    this.setState({ [evt.target.id]: evt.target.value, msg: "" })
  }

  addNew = (event) => {
    event.preventDefault();
    if (this.state.newpw !== this.state.newpw2) {
      this.setState({ msg: "Your passwords must match" })
      event.target.reset();
    } else {
      this.props.addNew(this.state.newuser, this.state.newpw);
    }
  }

  render() {
    return (
      <div>
        <h2>Welcome to CA3</h2>
        <br></br>
        <form onSubmit={this.login} onChange={this.onChange} >
          <fieldset>
            <legend>Login:</legend>
            <input placeholder="User Name" id="username" />
            <input placeholder="Password" id="password" />
            <button>Login</button>
          </fieldset>
        </form>
        <br></br>
        <form onSubmit={this.addNew} onChange={this.onChange} >
          <fieldset>
            <legend>New user? Register here:</legend>
            <input placeholder="User Name" id="newuser" />
            <input placeholder="Password" id="newpw" />
            <input placeholder="Repeat password" id="newpw2" />
            <button>Login</button>
          </fieldset>
        </form>
        <p>{this.state.msg}</p>

      </div>
    )
  }
}

class LoggedIn extends Component {
  constructor(props) {
    super(props);
    this.state = { dataFromServer: "Fetching!!" };
  }

  componentDidMount() {
    facade.fetchData().then(res => this.setState({ dataFromServer: res }));

  }
  render() {
    return (
      <div>
        <Header user={this.state.dataFromServer} />
      </div>
    )
  }
}

class App extends Component {
  constructor(props) {
    super(props);
    this.state = { loggedIn: false }
  }

  logout = () => {
    facade.logout();
    this.setState({ loggedIn: false });
  } //TODO

  login = (user, pass) => {
    facade.login(user, pass)
      .then(res => this.setState({ loggedIn: true }));
  } //TODO

  addNew = (user, pass) => {
    facade.addNew(user, pass) // SKAL MÅSKE ÆNDRES HERUNDER?
      .then(res => this.setState({ loggedIn: true }));
  } //TODO

  render() {
    return (
      <div>
        {!this.state.loggedIn ? (<LogIn login={this.login} addNew={this.addNew} />) :
          (<div>
            <LoggedIn />
            <button onClick={this.logout}>Logout</button>
          </div>)}
      </div>
    )
  }
}

function Luke() {
  return (
    <div>
      <h4>Luke</h4>
    </div>
  );
}

function Test() {
  return (
    <div>
      <h4>Test</h4>
    </div>
  );
}

function User() {
  return (
    <div>
      <h4>User page</h4>
    </div>
  );
}

function Admin() {
  return (
    <div>
      <h4>Admin page</h4>
    </div>
  );
}

function Header(props) {
  return (
    <Router>
      <div>
        <ul className="header">
          <li><NavLink exact activeClassName="active" to="/">Home</NavLink></li>
          <li><NavLink activeClassName="active" to="/luke">Luke</NavLink></li>
          <li><NavLink activeClassName="active" to="/user">User</NavLink></li>
          <li><NavLink activeClassName="active" to="/admin">Admin</NavLink></li>
          <div className="nav-right"><li><p>{props.user}</p></li></div>
        </ul>
        <Switch>
          <Route exact path="/" component={Test} />
          <Route path="/luke" component={Luke} />
          <Route path="/user" component={User} />
          <Route path="/admin" component={Admin} />
        </Switch>
      </div>
    </ Router>
  )
}

export default App;