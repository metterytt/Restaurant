import React from 'react';
import CardView from 'react-native-cardview';
import {
    StyleSheet,
    Text,
    View,
    ScrollView,
    TouchableOpacity,
    SafeAreaView,
    Alert
} from 'react-native';
//import { createStackNavigator } from 'react-navigation';
//import InfoPage from './InfoPage';

const URL = "https://oloye.dk/api/info/getlists";

CardViewPress = (item) => {

    Alert.alert(
        "Kontakt information: \n \n" +
        item.restName + "\n " +
        "Madtype: " + item.foodType + "\n " +
        "Adresse: " + item.street + ", " + item.cityInfo.zip + " " + item.cityInfo.city + " \n" +
        "Telefon: " + item.phone + "\n " +
        "Website: " + item.website + "\n " +
        " "
    );
}

export default class ListViewData extends React.Component {
    /* static navigationOptions = {
        title: 'Welcome',
    }; */

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
                <Text style={{ textAlign: 'center', padding: 10 }}> Henter data... </Text>
            );
        }
        return restaurantList.map(item => {
            //const { navigate } = this.props.navigation;
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
                        <TouchableOpacity onPress={() => CardViewPress(item)}>
                        {/* <TouchableOpacity onPress={() => {navigate('restaurantInfo');}}>  */}
                            {/* <TouchableOpacity onPress={() => navigate('InfoPage', {item})}> */}
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
                <View style={styles.titleView}>
                    <Text style={styles.title}>Restaurants</Text>
                </View>
                <ScrollView>
                    <View>{this.renderData(restaurantList)}</View>
                </ScrollView>
            </SafeAreaView >
        );
    }
}


/* const App2 = createStackNavigator({
    Home: {screen: ListViewData},
    InfoPage: {screen: InfoPage},
});

export default App2; */



const styles = StyleSheet.create({

    safeAreaView: {
        flex: 1,
        backgroundColor: 'white'
    },
    container: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
    },
    child: {
        alignItems: 'center'
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
    },
    text1: {
        fontSize: 20,
        textAlign: 'left',
        marginBottom: 10
    },
    text2: {
        fontSize: 15,
        textAlign: 'left',
        opacity: .74,
    },
});



