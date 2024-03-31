import { Dimensions, StyleSheet } from "react-native";
import Color from "./Color";
const windowWidth = Dimensions.get('window').width;
const windowHeight = Dimensions.get('window').height;
export default StyleSheet.create({
    container: {
        flex: 1,
        marginHorizontal: windowWidth * 0.05,
        marginVertical: windowHeight * 0.02
    },
    sub_content: {
        marginHorizontal: windowWidth * 0.05,
    },
    list_items: {
        height: windowHeight * 0.5,
        display:'flex',
        flexDirection:'row'
    },
    row: {
        flexDirection: "row",
        backgroundColor: 'lightblue',
        marginVertical: 15,
        borderRadius: 20,
        alignItems: 'center',
        justifyContent: 'space-around'
    },
    context: {
        fontSize: 30,
        marginBottom: 30,
        marginTop: windowHeight * 0.2,
        fontWeight: "bold",
        textAlign: "left",
        color: Color.main_color,

    },
    subject: {
        fontSize: 25,
        marginBottom: 20,
        // marginTop: windowHeight * 0.2,
        // fontWeight: "bold",
        textAlign: "left",
        color: Color.main_color,
    },
    m_10: {
        margin: 6
    },
    title: {
        fontSize: 20,
        fontWeight: "bold",
        color: Color.main_color,
    },
    image: {
        flex: 1,
        justifyContent: 'center',
        position: 'relative'
    },
    toastify: {
        position: 'absolute',
        padding: 20,
        marginHorizontal: 10,
        width: '95%',
        display: 'flex',
        flexDirection: 'row',
        justifyContent: 'center',
        alignItems: 'center',
        borderRadius: 20,
        top: '7%'
    }
});