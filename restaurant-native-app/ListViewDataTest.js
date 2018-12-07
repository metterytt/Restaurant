import React from 'react';
import CardView from 'react-native-cardview';
import {
    StyleSheet,
    Text,
    View,
    ScrollView,
    TouchableOpacity,
    SafeAreaView,
    Alert,
} from 'react-native';

const URL = "https://oloye.dk/api/info/getlists";

export default class ListViewDataTest extends React.Component {
    static navigationOptions = {
        title: 'Restaurants',
        fontFamily: 'Courier'
    }; 

    constructor(props) {
        super(props);
        this.state = { value: 1, restaurantList: "" }
    }

    async componentDidMount() {

        try {
            this.mounted = true;
            const restaurantList = await fetch(URL).then(res => res.json());
            if (this.mounted) {
                this.setState({ restaurantList });
            }
        } catch (err) {
            Alert.alert("Der er sket en fejl med at hente data \n \n " + err);
        }
    }

    componentWillUnmount() {
        this.mounted = false;
    }

    renderData(restaurantList) {
        if (restaurantList.length === 0) {
            return (
                <Text style={{ textAlign: 'center', padding: 10, fontFamily: 'Courier' }}> Henter data... </Text>
            );
        }
        return restaurantList.map(item => {
            const { navigate } = this.props.navigation;
            return (
                <View
                    key={item.id}
                    style={{
                        alignItems: 'center',
                        flexDirection: 'row',
                        padding: 3,
                        justifyContent: 'space-between'
                    }}
                >
                   {/*  <TouchableOpacity onPress={() => this.onPress(item)}>  */}
                    <TouchableOpacity onPress={() => navigate('InfoPage', 
                    {
                        restName: item.restName, 
                        foodType: item.foodType,
                        zip: item.cityInfo.zip,
                        city: item.cityInfo.city,
                        street: item.street,
                        phone: item.phone,
                        website: item.website
                    })}>
                        
                        <CardView style={styles.card}
                            cardElevation={2}
                            cardMaxElevation={2}
                            cornerRadius={5}
                            cornerOverlap={false}
                        >
                            <Text style={styles.text1}>{item.restName}</Text>
                                <Text style={styles.text2}>
                                    {item.foodType + '    '}
                                    {item.cityInfo.zip + '    '}
                                    {item.cityInfo.city}
                                </Text>

                        </CardView>
                    </TouchableOpacity>
                </View>
            );
        });
    }

    render() {
        const { restaurantList } = this.state;
        return (
            <SafeAreaView style={styles.safeAreaView}>
                <ScrollView>
                    <View>{this.renderData(restaurantList)}</View>
                </ScrollView>
            </SafeAreaView >
        );
    }
}

const styles = StyleSheet.create({

    safeAreaView: {
        flex: 1,
        backgroundColor: 'whitesmoke',
    },
    container: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
    },
    child: {
        alignItems: 'center',
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
    titleView: {
        padding: 10,
        borderBottomColor: 'lightgrey',
        borderBottomWidth: 1,
        alignItems: 'center',
    },
    title: {
        fontSize: 25,
        color: 'black',
        fontFamily: 'Courier'
    },
    text1: {
        fontSize: 20,
        textAlign: 'left',
        marginBottom: 10,
        fontFamily: 'Courier'
    },
    text2: {
        fontSize: 15,
        textAlign: 'left',
        opacity: .74,
        fontFamily: 'Courier'
    },
});



