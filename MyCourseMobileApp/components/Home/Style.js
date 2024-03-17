import { Dimensions, StyleSheet } from "react-native";
import Color from "../../styles/Color";
const windowWidth = Dimensions.get('window').width;
const windowHeight = Dimensions.get('window').height;
export default StyleSheet.create({
    headers: {
        paddingTop: windowHeight * 0.07,
        paddingHorizontal: windowWidth * 0.05,
        // backgroundColor: Color.bg_color,
        // color: 'white',
        height: windowHeight * 0.2,
        borderBottomLeftRadius: 30,
        borderBottomRightRadius: 30,
        display: 'flex',
        flexDirection: 'row'
    },
    text: {
        width: windowWidth * 0.7
    },
    title: {
        fontSize: 20,
        color: Color.main_color
    },
    name: {
        fontSize: 30,
        marginVertical: 10,
        fontWeight: '500',
        color: Color.main_color

    },
    avatar: {
        width: 70,
        height: 70,
        borderRadius: 35,
        backgroundColor: 'lightgray',
        marginRight: 20
    },
    // Carousel
    carousel: {
        marginHorizontal: windowWidth * 0.015
    },
    renderItem1_parentView: {
        marginVertical: 20,
        backgroundColor: "black",
        borderRadius: 18,
        height: 170,
        width: windowWidth * 0.85,
        justifyContent: "space-around",
        alignItems: "center",
        overflow: "hidden",
        // marginHorizontal: 10
    },
    renderItem1_img: {
        height: 140,
        width: 400
    },
});