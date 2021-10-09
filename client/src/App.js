import { Route, Switch } from 'react-router-dom';
import FetchUser from './components/auth/FetchUser';
import Navbar from './components/shared/Navbar';
import Home from './components/shared/Home';
import Nomatch from './components/shared/Nomatch';
import Login from './components/auth/Login';
import Register from './components/auth/Register';
import Users from './components/users/Users';
import Pets from './components/pet/Pets';
import Activities from './components/activity/Activities';
import Appointment from './components/appointment/Appointments';

import ProtectedRoute from './components/auth/ProtectedRoute';

const App = () => (
  <>
    <Navbar />
    <FetchUser>
      <Switch>
        <Route exact path="/" component={Home} />
        <Route exact path="/login" component={Login} />
        <Route exact path="/register" component={Register} />
        <Route exact path="/users" component={Users} />
        <Route exact path="/pets" component={Pets} />
        <Route exact path="/activity" component={Activities} />
        <Route exact path="/appointment" component={Appointment} />
        <Route component={Nomatch} />
      </Switch>
    </FetchUser>
  </>
)

export default App;