import { Button, ScrollView, StyleSheet, Text, TextInput, View } from 'react-native'
import React, { useState } from 'react'

export default function CommentSection() {
	const [comments, setComments] = useState([]);
  	const [newComment, setNewComment] = useState('');

	const handleAddComment = () => {
		if (newComment.trim() !== '') {
		const comment = {
			id: Math.random().toString(),
			content: newComment,
			username: 'User', // Thay đổi thành tên người dùng hiện tại
			timestamp: new Date().toISOString(),
		};
		setComments([...comments, comment]);
		setNewComment('');
		}
	}
  return (
    <View>
		<Text style={styles.commentTitle}>Comment</Text>

		{/* Comment body: */}
		<View style={styles.container}>
			<TextInput
				placeholder="Add a comment..."
				value={newComment}
				onChangeText={setNewComment}
				style={styles.input}
			/>
			<Button title="Gửi" onPress={handleAddComment} />
			<ScrollView
				data={comments}
				renderItem={({ item }) => (
				<View style={styles.commentContainer}>
					<Text style={styles.username}>{item.username}</Text>
					<Text>{item.content}</Text>
					<Text style={styles.timestamp}>{item.timestamp}</Text>
				</View>
				)}
				keyExtractor={item => item.id}
			/>
		</View>

		{/* End: Comment body */}
    </View>
  )
}

const styles = StyleSheet.create({
	container: {
		flex: 1,
		padding: 10,
	},
	commentTitle: {
		fontSize: 22,
		fontWeight: 'bold',
		marginTop: 18,
		marginBottom: 2,
	},
	input: {
		marginBottom: 8,
		borderBottomWidth: 1,
		padding: 8,
	},
	commentContainer: {
		borderBottomWidth: 1,
		paddingVertical: 8,
	},
	username: {
		fontWeight: 'bold',
	},
	timestamp: {
		fontSize: 10,
		color: 'gray',
	},
})