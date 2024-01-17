// Import necessary packages
import 'package:e_commerce_app/widgets/storedata.dart';
import 'package:image_picker/image_picker.dart';

// Select image from gallery
Future<void> pickImage() async {
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
    // Use the picked image file
    String imageUrl = pickedFile.path;
    // Save the image URL to Firestore
    addUserToFirestore("username", imageUrl);
  }
}