import React, { Component } from 'react';
import CardView from 'react-native-cardview';
import {
    StyleSheet,
    Text,
    ScrollView,
} from 'react-native';

//const URL = "https://oloye.dk/api/info/getlists";

/* getMenuItems = (id) => {
    const options = this.makeOptions("GET", true);
    return fetch(URL + "/api/info/getmenu?id=" + id, options).then(handleHttpErrors);
} */

export default class InfoPage extends Component {
    constructor(props) {
        super(props)
        //this.state={menuItems: []}
    }

    render() {
        const restaurant = this.props.navigation.state.params;
        return (
            <ScrollView>
                <CardView style={styles.card}
                    cardElevation={2}
                    cardMaxElevation={2}
                    cornerRadius={5}
                    cornerOverlap={false}
                >
                    <Text style={styles.restName}>
                    {restaurant.restName + '\n '}
                    </Text>

                    <Text style={styles.information}>
                        {'Madtype: \n' + restaurant.foodType + '\n \n'}
                        {'Adresse: \n' + restaurant.street + '\n' + restaurant.zip + ' ' + restaurant.city + '\n \n'}
                        {'Telefon: \n' + restaurant.phone + '\n \n'}
                        {'Website: \n' + restaurant.website + '\n '}
                    </Text>
                </CardView>
            </ScrollView>
        );
    }
}

const styles = StyleSheet.create({
    information: {
        textAlign: 'center',
        marginTop: 10,
        fontSize: 20,
        fontFamily: 'Courier'
    },
    restName: {
        textAlign: 'center',
        marginTop: 10,
        fontSize: 25,
        fontFamily: 'Courier'
    },
    card: {
        backgroundColor: 'white',
        padding: 15,
        textAlign: 'center',
        justifyContent: 'center',
        alignSelf: 'center',
        flex: 1,
        margin: 2,
        marginLeft: 4,
        marginRight: 4,
        width: 361
    },
});

