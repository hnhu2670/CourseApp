import { Dimensions, StyleSheet } from "react-native";
import Color from "../../styles/Color";
const windowWidth = Dimensions.get('window').width;
const windowHeight = Dimensions.get('window').height;
export default StyleSheet.create({
    input: {
        width: "100%",
        paddingHorizontal: 20,
        paddingVertical: 15,
        marginBottom: 20,
        borderBottomWidth: 1,
        borderBottomColor: Color.main_color,
        color: Color.main_color,
        display: 'flex',
        flexDirection: 'row'
    },
    button: {
        textAlign: "center",
        backgroundColor: Color.main_color,
        color: "white",
        padding: 10,
        borderRadius: 23,
        marginVertical: 20,
        marginTop: 50,
        marginHorizontal: windowWidth * 0.22,
        fontSize: 18,
        width: windowWidth * 0.5,
        height: windowHeight * 0.07,
        alignItems: 'center',
        textAlign: 'center',
        paddingVertical: 15
    },
    text_input: {
        display: 'flex',
        flexDirection: 'row'
    },
    avatar: {
        width: 80,
        height: 80,
        margin: 5
    },
    link: {

        fontStyle: 'italic',
        color: Color.main_color,
        fontSize: 16
    }
})