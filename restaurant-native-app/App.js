import React from 'react';
import { Text, Platform, TouchableOpacity, StyleSheet, ScrollView, Image } from 'react-native';
import { Constants } from "expo";
import { createStackNavigator } from 'react-navigation';
//import ListViewData from './ListViewData.js';
import ListViewData from './ListViewDataTest.js';
import InfoPage from './InfoPage';

const Touchable = (props) => (
  <TouchableOpacity style={styles.button} onPress={props.onPress}>
    <Text style={styles.buttonText}>{props.title}</Text>
  </TouchableOpacity>)
 
class HomeScreen extends React.Component {
  static navigationOptions = { title: ' ' };
  render() {
    const { navigate } = this.props.navigation;
    return (
      <ScrollView style={styles.white}>
      <Image 
        style={styles.image} 
        source={require('./img/new_logo.png')} 
      />
         <Touchable onPress={() => navigate('listViewData')} title="Find restaurants" /> 
        <Text></Text>
        <Text></Text>
      </ScrollView>
    )
  }
}

export default App = () => <RouteStack style={{ fontFamily: 'Courier', marginTop: Platform.OS === 'ios' ? 0 : Constants.statusBarHeight / 2 }} />

const RouteStack = createStackNavigator({
  Home: { screen: HomeScreen },
  listViewData: {screen: ListViewData },
  InfoPage: {screen: InfoPage},
});

const styles = StyleSheet.create({
  container: {
    paddingTop: 60,
    alignItems: 'center',
    justifyContent: 'center'
  },
  button: {
    marginTop: 150,
    alignItems: 'center',
    backgroundColor: 'black',
    borderRadius: 70,
    paddingTop: 20,
    paddingBottom: 20,
    marginHorizontal: 40
  },
  buttonText: {
    color: 'white',
    fontSize: 20,
    fontFamily: 'Courier'
    
  },
  white: {
    backgroundColor: 'white'
  },
  text: {
    marginTop: 50,
    textAlign: "center", 
    fontSize: 23, 
    fontFamily: 'Courier'
  },
  image: {
    width: 360, 
    height: 150, 
    marginLeft: 10, 
    marginRight: 10, 
    marginTop: 100, 
    marginBottom: 0
  }
  
});
