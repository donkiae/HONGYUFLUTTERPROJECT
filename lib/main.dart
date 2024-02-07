

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter3 Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}


class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Hardcoded username and password
  final String hardcodedUsername = 'U';
  final String hardcodedPassword = 'P';

  void _showInvalidLoginDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Invalid Login'),
          content: Text('Please check your username and password and try again.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, 
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('images/PF.png'),
            ),
            SizedBox(width: 8.0),
            Text('Welcome Back'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/B.png',  
              width: double.infinity, 
              fit: BoxFit.cover,
            ),
            Card(
              elevation: 5.0,
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: _usernameController,
                      style: TextStyle(color: Colors.white), 
                      decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: _passwordController,
                      style: TextStyle(color: Colors.white), 
                      decoration: InputDecoration(
                        labelText: 'Password',
                        
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                      ),
                      obscureText: true,
                    ),
                    ElevatedButton(
                      child: Text('LOGIN'),
                      onPressed: () {
                        String enteredUsername = _usernameController.text;
                        String enteredPassword = _passwordController.text;

                
                        if (enteredUsername == hardcodedUsername && enteredPassword == hardcodedPassword) {
                        
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        } else {
                        
                          _showInvalidLoginDialog(context);
                        }
                      },
                    ),
                    TextButton(
                      child: Text('Signup'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupPage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            // Footer
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                'MCL 2002 All Rights Reserved',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, 
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('images/SB.png'), 
            ),
            SizedBox(width: 8.0), 
            Text('Welcome'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              elevation: 5.0,
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                        color: Colors.white,
                        width: 2.0),
                        borderRadius: BorderRadius.circular(28.0),
                        
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 2.0),
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                      ),
                    ),
                    SizedBox(
                      height: 10
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Phone No',
                       labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                        color: Colors.white,
                        width: 2.0),
                        borderRadius: BorderRadius.circular(28.0),
                        
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 2.0),
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                      ),
                    ),
                      SizedBox(
                      height: 10
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                       labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                        color: Colors.white,
                        width: 2.0),
                        borderRadius: BorderRadius.circular(28.0),
                        
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 2.0),
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                      ),
                    ),
                      SizedBox(
                      height: 10
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                        color: Colors.white,
                        width: 2.0),
                        borderRadius: BorderRadius.circular(28.0),
                        
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 2.0),
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                      ),
                      obscureText: true,
                    ),
                      SizedBox(
                      height: 10
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                        color: Colors.white,
                        width: 2.0),
                        borderRadius: BorderRadius.circular(28.0),
                        
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 2.0),
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                        
                      ),
                      obscureText: true,
                    ),
                    ElevatedButton(
                      child: Text('SIGN UP'),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => SuccessfulSignupPage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            // Footer
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                'MCL 2002 All Rights Reserved',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuccessfulSignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup Successful'),
      ),
      backgroundColor: Colors.black, 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 70,
            ),
            SizedBox(height: 20.0),
            Text(
              'You have successfully signed up!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                  (Route<dynamic> route) => false,
                );
              },
              child: Text(
                'Back To Login',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'MCL 2002 All Rights Reserved',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}














class HomePageContent extends StatefulWidget {
  @override
  _HomePageContentState createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  List<Product> products = [
    Product(
      name: 'Squishy Boba',
      description: 'Delicious boba drink',
      rating: 2,
      image: 'images/T.png',
    ),
    Product(
      name: 'Chirpy Fishes',
      description: 'Fried fish dish',
      rating: 1,
      image: 'images/S.png',
    ),
    Product(
      name: 'Mackadoodle',
      description: 'Noodle dish',
      rating: 3,
      image: 'images/SB.png',
    ),
    Product(
      name: 'Mackies',
      description: 'Potato dish',
      rating: 3,
      image: 'images/PP.png',
    ),
   
  ];

  List<Product> filteredProducts = [];

  String filterCategory = ''; 

  @override
  void initState() {
    filteredProducts.addAll(products);
    super.initState();
  }

  void filterProducts(String query) {
    setState(() {
      filteredProducts = products.where((product) {
        final name = product.name.toLowerCase();
        final description = product.description.toLowerCase();

        if (query.toLowerCase() == 'italian' && name.contains('mackadoodle')) {
          return true;
        } else if (query.toLowerCase() == 'western' &&
            (name.contains('chirpy fishes') || name.contains('mackies'))) {
          return true;
        } else if (query.toLowerCase() == 'drinks' && name.contains('boba')) {
          return true;
        } else {
          return name.contains(query.toLowerCase()) ||
              description.contains(query.toLowerCase());
        }
      }).toList();
    });
  }

  void showFilterDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Filter By'),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
               
                ListTile(
                  title: Text('Italian'),
                  onTap: () {
                    filterCategory = 'italian';
                    filterProducts(filterCategory);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('Western'),
                  onTap: () {
                    filterCategory = 'western';
                    filterProducts(filterCategory);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('Drinks'),
                  onTap: () {
                    filterCategory = 'drinks';
                    filterProducts(filterCategory);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Clear'),
              onPressed: () {
                filterCategory = ''; 
                filterProducts('');
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          children: [
             Image.asset(
            'images/Map.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
            // Search bar
            Padding(
              
              padding: EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (query) {
                  filterProducts(query);
                },
                decoration: InputDecoration(
                  labelText: 'Search for Food',
                  labelStyle: TextStyle(color: Colors.white), 
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.white, 
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
           
            ElevatedButton(
              onPressed: () {
                showFilterDialog();
              },
              child: Text('Filter By'),
            ),
            
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: filteredProducts.map((product) {
                  return Column(
                    children: [
                      Image.asset(
                        product.image,
                        width: 150,
                        height: 150,
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        product.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                         
                        ],
                      ),
                      InkWell(
                        onTap: () {
                         
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CartPage()), 
                          );
                        },
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
         
          
          ],
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final String description;
  final int rating;
  final String image;

 Product({
    this.name = '',
    this.description = '',
    this.rating = 0,
    this.image = '',
  });
}


class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int itemCount = 1;
  TextEditingController notesController = TextEditingController();
  bool isNotesConfirmed = false;

  

  void incrementItemCount() {
    setState(() {
      itemCount++;
    });
  }


  void decrementItemCount() {
    if (itemCount > 1) {
      setState(() {
        itemCount--; 
      });
    }
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
     
      body: Column(
        children: [
          // Your Cart header
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'YOUR CART',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Image.asset('images/SB.png'), 
                  title: Text('Mackadoodle'),
                  subtitle: Text('Made with poodles , noodles and doodles'),
                  trailing: Text('\$4'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        decrementItemCount(); 
                      },
                    ),
                    Text(itemCount.toString()),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        incrementItemCount(); 
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.yellow), 
                    Icon(Icons.star, color: Colors.yellow), 
                  ],
                ),
                ListTile(
                  leading: Image.asset('images/PP.png'), 
                  title: Text('Mackies'),
                  subtitle: Text('Made with poop from cows & potatopoTATO'),
                  trailing: Text('\$5'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        decrementItemCount(); 
                      },
                    ),
                    Text(itemCount.toString()),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        incrementItemCount();
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.yellow), 
                    Icon(Icons.star, color: Colors.yellow), 
                    Icon(Icons.star, color: Colors.yellow),
                  ],
                ),
              ],
            ),
          ),
    
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
              
                TextField(
                  controller: notesController,
                  decoration: InputDecoration(
                    labelText: 'Add your notes here',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
       
          ElevatedButton(
            onPressed: () {
             
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderPage()),
              );
            },
            child: Text('Order Now'),
          ),
         
        ],
      ),
    );
  }
}



class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Thank you for your order.',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Your order number is #1203.',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
              
                Navigator.pop(context);
              },
              child: Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  final String productName;
  final String productDescription;
  final String productImage;
  final double productPrice;

  ProductDetailsPage({
    @required this.productName,
    @required this.productDescription,
    @required this.productImage,
    @required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              productImage,
              width: 400.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                productName,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                productDescription,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Price: \$${productPrice.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      child: Container(
        color: Colors.black, 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/BAN.png',
              width: 400.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'ABOUT US',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, 
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'When shrek decided to marry fiona with a RACHET donkey, he got bored and asked pink panther to open us a business to become even fatter. Therefore, MCLborderlands was born as shrek became so obese whereas fiona still looked ugly as ever and is still married to shrek',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white, 
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.email,
                  size: 30.0,
                  color: Colors.blue,
                ),
                
                TextButton(
  child: Text('Plankton@demonslayer.com'),
  onPressed: () async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'Plankton@demonslayer.com',
    );
    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch email';
    }
  },
),
              ],
            ),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.phone,
                  size: 30.0,
                  color: Colors.blue,
                ),
                
               TextButton(
  child: Text('999-911-999'),
  onPressed: () async {
    final Uri _phoneLaunchUri = Uri(
      scheme: 'tel',
      path: '999911999',
    );
    if (await canLaunch(_phoneLaunchUri.toString())) {
      await launch(_phoneLaunchUri.toString());
    } else {
      throw 'Could not launch phone';
    }
  },
),

              ],
            ),
          ],
        ),
      ),
    );
  }
}









class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePageContent(),
    AboutPage(),
    CartPage(),
    ProfilePage(),
  ];

  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: _pages[_currentIndex],
          ),
          Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(8.0),
            child: Text(
              'MCL 2002 All Rights Reserved',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.pink, 
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
              color: Colors.blue, 
            ),
            label: 'About',
          ),
            BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.orange, 
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.green, 
            ),
            label: 'Profile',
          ),
        
        ],
      ),
    );
  }
}


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<String> _images = [
    'images/D.png',
    'images/M.png',
    'images/SH.png',
    'images/LF.png',
    'images/C.png',
    'images/R.png',

  ];

  int _currentIndex = 0; 

  void _toggleImage() {
    setState(() {
   
      _currentIndex = (_currentIndex + 1) % _images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                image: DecorationImage(
                  image: AssetImage(_images[_currentIndex]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
             SizedBox(height: 16.0), 
            ElevatedButton(
              onPressed: _toggleImage,
              child: Text('Change Profile Picture'),
            ),
            SizedBox(height: 16.0),
            Text(
              'ColinaLee', 
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              '99125291', 
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              'princessC@castle.com', 
              style: TextStyle(fontSize: 16.0),
            ),
          
            TextButton(
              child: Text('Log Out'),
              onPressed: () {
               
               
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                      (Route<dynamic> route) => false,
                );
              },
            ),
           
          ],
        ),
      ),
    );
  }
}





















