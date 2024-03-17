import { ActivityIndicator, Image, ScrollView, StyleSheet, Text, View } from "react-native";
import Style from "./Style";
import React, { useContext, useEffect, useState } from "react";
import API, { endpoints } from "../../configs/API";
import MyStyles from "../../styles/MyStyles";
import { TouchableOpacity } from "react-native-gesture-handler";
import moment from "moment";
import axios from "axios";
import MyContext from "../../configs/MyContext";
import Carousel from 'react-native-snap-carousel';
import Color from "../../styles/Color";
import { Entypo } from "@expo/vector-icons";

const Home = ({ route, navigation }) => {
    const [current_user, dispatch] = useContext(MyContext);
    // console.log('current_user', current_user);
    const [courses, setCourses] = useState(null);
    const cateId = route.params?.cateId;

    useEffect(() => {
        const loadCourses = async () => {
            let url = endpoints['courses'];

            if (cateId !== undefined && cateId != null)
                url = `${url}?category_id=${cateId}`;

            try {
                let res = await axios.get(url);
                setCourses(res.data.results);
            } catch (ex) {
                setCourses([]);
                console.error(ex);
            }
        };

        loadCourses();
    }, [cateId]);

    const goToLesson = (courseId) => {
        navigation.navigate("Lesson", { "courseId": courseId });
    };
    const views1 = [
        {
            imgUrl: "https://picsum.photos/200/300?random=1",
            title: "Airport Cabs",
        },
        {
            imgUrl: "https://picsum.photos/200/300?random=3",
            title: "Gift Cards",
        },
        {
            imgUrl: "https://picsum.photos/200/300?random=5",
            title: "Hourly Stays",
        },
        {
            imgUrl: "https://picsum.photos/200/300?random=7",
            title: "Travel Insurance",
        },
        {
            imgUrl: "https://picsum.photos/200/300?random=9",
            title: "Forex",
        },
        {
            imgUrl: "https://picsum.photos/200/300?random=11",
            title: "HomeStays & Villas",
        },
    ];

    const renderItem1 = ({ item }) => {
        return (
            <View style={Style.renderItem1_parentView}>
                <Image source={{ uri: item.imgUrl }} style={Style.renderItem1_img} />
            </View>
        );
    };

    return (
        <View >
            <View style={Style.headers}>
                <View style={Style.text}>
                    <Text style={Style.title}>Hello,</Text>
                    <Text style={Style.name}>{current_user.last_name} {current_user.first_name}</Text>
                </View>
                <Image
                    style={Style.avatar}
                    source={{ uri: current_user?.avatar }}
                />
            </View>
            <View style={Style.carousel}>
                <Carousel
                    layout={"default"}
                    data={views1}
                    renderItem={renderItem1}
                    sliderWidth={400}
                    itemWidth={350}
                />
            </View>
            <View style={MyStyles.sub_content}>
                <Text style={MyStyles.subject}>Danh sách khóa học</Text>
                <ScrollView style={MyStyles.list_items}>
                    {courses === null ? (
                        <ActivityIndicator />
                    ) : (
                        courses.map((c) => (
                            <View style={MyStyles.row} key={c.id}>
                                <TouchableOpacity
                                    style={{ width: '100%', backgroundColor: "red", borderRadius: 50 }}
                                    onPress={() => goToLesson(c.id)}>
                                    <Image
                                        source={{ uri: c.image }}
                                        style={[MyStyles.m_10, { width: 80, height: 80 }]}
                                    />
                                </TouchableOpacity>
                                <TouchableOpacity
                                    onPress={() => goToLesson(c.id)}>
                                    <Text style={[MyStyles.m_10, MyStyles.title]}>{c.subject}</Text>
                                    <Text style={MyStyles.m_10}>{moment(c.created_date).fromNow()}</Text>

                                </TouchableOpacity>
                                <TouchableOpacity style={{ backgroundColor: 'red', borderRadius: 20, padding: 5 }}>
                                    <Entypo name='plus' size={30} color={'black'} />
                                </TouchableOpacity>
                            </View>
                        ))
                    )}
                </ScrollView>
            </View>
        </View>

    );
};
// const styles = StyleSheet.create({
//     renderItem1_parentView: {
//         marginVertical: 20,
//         backgroundColor: "black",
//         borderRadius: 18,
//         height: 170,
//         width: 350,
//         justifyContent: "space-around",
//         alignItems: "center",
//         overflow: "hidden",
//         // marginHorizontal: 10
//     },
//     renderItem1_img: {
//         height: 140,
//         width: 350
//     },

// }
// );


export default Home;