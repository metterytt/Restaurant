import React, { Component } from 'react';
import CardView from 'react-native-cardview';
import {
    StyleSheet,
    Text,
    ScrollView,
} from 'react-native';

export default class InfoPage extends Component {
    constructor(props) {
        super(props)
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

                    <Text style={styles.information}>{'Madtype:'}</Text>
                    <Text style={styles.information2}>{restaurant.foodType + '\n'}</Text>
                    <Text style={styles.information}>{'Adresse: '}</Text>    
                    <Text style={styles.information2}>{restaurant.street + '\n' + restaurant.zip + ' ' + restaurant.city + ' \n'}</Text>   
                    <Text style={styles.information}>{'Telefon: '}</Text>   
                    <Text style={styles.information2}>{restaurant.phone + '\n'}</Text>
                    <Text style={styles.information}>{'Website: '}</Text>
                    <Text style={styles.information2}>{restaurant.website + '\n'}</Text>

                        
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
        fontFamily: 'Courier',
        fontWeight: 'bold'
    },
    information2: {
        textAlign: 'center',
        marginTop: 10,
        fontSize: 20,
        fontFamily: 'Courier',
    },
    restName: {
        textAlign: 'center',
        marginTop: 10,
        fontSize: 25,
        fontFamily: 'Courier',
        textDecorationLine: 'underline'
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

