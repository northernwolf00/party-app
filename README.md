
# 🎉 Party Invitation App — Flutter + BLoC

A stylish **Flutter application** to create, manage, and share **party invitations** with friends and family.  
Perfect for birthdays, weddings, meetups, or any celebration! 🥳  

Built with **BLoC** for clean architecture and reactive updates.

## 📷 Screenshots

<p align="center">
  <img src="assets/screenshots/photo1.jpeg" alt="" width="45%"/>
  &nbsp;&nbsp;
 
</p>
---

## ✨ Features

### 📝 Create Invitations
- 🖋 Enter event title, date, time, and location.
- 🖼 Add a cover image for your invitation.
- 🎯 Choose invitation type (Birthday, Wedding, Custom).

### 📤 Share Invitations
- 🔗 Share via link, email, or social media.
- 📱 Generate a QR code for easy scanning.

### 📅 Manage Your Events
- 📋 View all your upcoming parties in one place.
- ✏️ Edit or delete invitations anytime.
- 📊 Track RSVPs (who’s attending).

---

## 🧰 Technologies Used
- **Flutter** (latest stable)
- **BLoC** → [`flutter_bloc`](https://pub.dev/packages/flutter_bloc)
- **Local Database** → [`hive`](https://pub.dev/packages/hive) or [`sqflite`](https://pub.dev/packages/sqflite)
- **Image Picker** → [`image_picker`](https://pub.dev/packages/image_picker)

---

💡 Tips

📷 Use high-quality images to make invitations pop.

🔒 Store event details securely if they’re private.

📱 Test on different screen sizes for the best experience.



## 📁 Project Structure
```plaintext
    lib/
    ├─ main.dart
    ├─ app.dart
    ├─ bloc/
    │  ├─ invitation/
    │  │  ├─ invitation_bloc.dart
    │  │  ├─ invitation_event.dart
    │  │  ├─ invitation_state.dart
    ├─ models/
    │  └─ invitation.dart
    ├─ repositories/
    │  └─ invitation_repository.dart
    ├─ services/
    │  ├─ storage_service.dart
    │  └─ share_service.dart
    ├─ screens/
    │  ├─ home_screen.dart
    │  ├─ create_invitation_screen.dart
    │  └─ invitation_details_screen.dart
    ├─ widgets/
    │  ├─ invitation_card.dart
    │  └─ rsvp_button.dart
    └─ utils/

⚙️ Setup Guide
1️⃣ Clone the repository

  git clone <repo-url>
  cd party_invitation_app

2️⃣ Install dependencies

  flutter pub get

3️⃣ Run the app

  flutter run


