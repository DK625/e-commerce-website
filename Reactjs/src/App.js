import Home from './Pages/Home';
import Shop from './Pages/Shop.js';
import Contact from './Pages/Contact.js';
import ProductDetail from './Pages/ProductDetail.js'
import Cart from './Pages/ShoppingCart.js';
import CheckOut from './Pages/CheckOut.js';
import { BrowserRouter as Router, Switch, Redirect, Route } from "react-router-dom";
import MemberDashboard from './Pages/Dashboard/MemberDashboard/MemberDashboard.js';
import Header from './Components/Header';
import Footer from './Components/Footer.js';
import AdminDashboard from './Pages/Dashboard/AdminDashboard/AdminDashboard.js';
import { useContext } from "react"
import { AuthContext } from "./Context/AuthContext.js"

function App() {

  const { user } = useContext(AuthContext)

  return (
    <Router>
      <Header />
      <div className="App">
        <Switch>
          <Route exact path='/'>
            <Home />
          </Route>
          <Route exact path='/shop'>
            <Shop />
          </Route>
          <Route exact path='/product_detail'>
            <ProductDetail />
          </Route>
          <Route exact path='/contact'>
            <Contact />
          </Route>
          <Route exact path='/cart'>
            <Cart />
          </Route>
          <Route exact path='/checkout'>
            <CheckOut />
          </Route>
          {/* <Route exact path='/signin'>
            {user ? (user.isAdmin ? <Redirect to='/dashboard@admin' /> : <Redirect to='/dashboard@member' />) : <Signin />}
          </Route> */}
          <Route exact path='/dashboard@member'>
            {user ? (user.isAdmin === false ? <MemberDashboard /> : <Redirect to='/' />) : <Redirect to='/' />}
          </Route>
          <Route exact path='/dashboard@admin'>
            {user ? (user.isAdmin === true ? <AdminDashboard /> : <Redirect to='/' />) : <Redirect to='/' />}
          </Route>
          <Route exact path='/books'>
            <Home />
          </Route>
        </Switch>
      </div>
      <Footer />
    </Router>
  );
}

export default App;