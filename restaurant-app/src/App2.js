import React, { Component } from "react"
import facade from "./apiFacade";
import Data from './Data.js';
import Admin from './Admin.js';
//import User from './User.js';
import Home from './Home.js';
import Restaurants from './Restaurants';
import MyRestaurants from './MyRestaurants.js';
import { BrowserRouter as Router, Route, Switch, NavLink } from "react-router-dom";

class App extends Component {
    constructor(props) {
        super(props);
        this.state = { loggedIn: false, role: "", username: "", password: "" }
    }

    logout = () => {
        facade.logout();
        this.setState({ loggedIn: false });
    }

    login = (user, pass) => {
        console.log("In the login method of App2")
        facade.login(user, pass)
            .then(res => this.setState({ loggedIn: true, username: user }));
    }

    render() {
        if (!this.state.loggedIn) {
            return (
                <Router>
                    <div>
                        <ul className="header">
                            <li><NavLink exact activeClassName="active" to="/">Restaurants</NavLink></li>
                            <li><NavLink activeClassName="active" to="/login">Log in</NavLink></li>
                        </ul>
                        <Switch>
                            <Route exact path="/" component={Restaurants} />
                            <Route path="/login" render={(props) => <LogIn {...props} login={this.login} />} />
                        </Switch>
                    </div>
                </Router>
            )
        } else 

        return (
            <Router>
            <div>
                <ul className="header">
                    <li><NavLink activeClassName="active" to="/myrestaurants">MyRestaurants</NavLink></li>
                    <li><NavLink activeClassName="active" to="/logout" onClick={this.logout}>Logout</NavLink></li>
                    <div className="nav-right"><li><p>{this.state.username}</p></li></div>
                </ul>
                <Switch> 
                    <Route path="/myrestaurants" render={(props) => <MyRestaurants {...props} username={this.state.username} />} />

                </Switch>
            </div>
        </ Router>
        )

    }
}

class LogIn extends Component {
    constructor(props) {
        super(props);
        this.state = { username: "", password: "" }
    }

    login = (evt) => {
        evt.preventDefault();
        this.props.login(this.state.username, this.state.password);
    }

    onChange = (evt) => {
        this.setState({ [evt.target.id]: evt.target.value, msg: "" })
    }

    render() {
        return (
            <div>

                <br />
                <form onSubmit={this.login} onChange={this.onChange} >
                    <fieldset>
                        <legend>Login:</legend>
                        <input placeholder="User Name" id="username" />
                        <input placeholder="Password" id="password" />
                        <button>Login</button>
                    </fieldset>
                </form>
                <br></br>
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
                <Header user={this.state.dataFromServer} logout={this.props.logout} />
            </div>
        )
    }
}

function Header(props) {
    let role = "";
    if (localStorage.jwtToken) {
        let jwt = localStorage.jwtToken;
        let jwtData = jwt.split('.')[1]
        let decodedJwtJsonData = window.atob(jwtData)
        let decodedJwtData = JSON.parse(decodedJwtJsonData)
        role = decodedJwtData.roles
    }
    console.log('role: ' + role)
    if (role === "rest_owner") {
        console.log("Headerporps: " + props)
        return (
            <Router>
                <div>
                    <ul className="header">
                        <li><NavLink exact activeClassName="active" to="/">Home</NavLink></li>
                        <li><NavLink activeClassName="active" to="/myrestaurants">MyRestaurants</NavLink></li>
                        <li><NavLink activeClassName="active" to="/logout" onClick={props.logout}>Logout</NavLink></li>
                        <div className="nav-right"><li><p>{props.user}</p></li></div>
                    </ul>
                    <Switch>
                        <Route exact path="/" component={Home} />
                        <Route path="/myrestaurants" render={(props) => <MyRestaurants {...props} user={props.user} />} />

                    </Switch>
                </div>
            </ Router>
        )
    }

    /* if (role === "rest_owner") {
      return (
        <Router>
          <div>
            <ul className="header">
              <li><NavLink exact activeClassName="active" to="/">Home</NavLink></li>
              <li><NavLink activeClassName="active" to="/restaurants">Restaurants</NavLink></li>
              <li><NavLink activeClassName="active" to="/user">User</NavLink></li>
              <li><NavLink activeClassName="active" to="/logout" onClick={props.logout}>Logout</NavLink></li>
              <div className="nav-right"><li><p>{props.user}</p></li></div>
            </ul>
            <Switch>
              <Route exact path="/" component={Home} />
              <Route path="/restaurants" component={Restaurants} />
              <Route path="/user" component={User} />
            </Switch>
          </div>
        </ Router>
      )
    } */
    else if (role === "admin") {

        return (
            <Router>
                <div>
                    <ul className="header">
                        <li><NavLink exact activeClassName="active" to="/">Home</NavLink></li>
                        <li><NavLink activeClassName="active" to="/data">Data</NavLink></li>
                        <li><NavLink activeClassName="active" to="/admin">Admin</NavLink></li>
                        <li><NavLink activeClassName="active" to="/logout" onClick={props.logout}>Logout</NavLink></li>
                        <div className="nav-right"><li><p>{props.user}</p></li></div>
                    </ul>
                    <Switch>
                        <Route exact path="/" component={Home} />
                        <Route path="/data" component={Data} />
                        <Route path="/admin" component={Admin} />
                    </Switch>
                </div>
            </ Router>
        )
    }
    else {
        return (
            <Router>
                <div>
                    <ul className="header">
                        <li><NavLink exact activeClassName="active" to="/">Home</NavLink></li>
                        <li><NavLink activeClassName="active" to="/restaurants">Restaurants</NavLink></li>
                        <div className="nav-right"><li><p>Not logged in</p></li></div>
                    </ul>
                    <Switch>
                        <Route exact path="/" component={Home} />
                        <Route path="/restaurants" component={Restaurants} />
                    </Switch>
                </div>
            </ Router>
        )

    }
}

export default App;
