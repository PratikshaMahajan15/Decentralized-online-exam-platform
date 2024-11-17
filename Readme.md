# Decentralized Online Exam Platform

## Introduction to the Project
The **Decentralized Online Exam Platform** is a blockchain-powered solution developed using the Move programming language on the Aptos blockchain. It allows users to create exams and track submission counts in a decentralized, immutable, and secure manner.  

The platform is designed to provide a transparent and reliable way for educators and participants to engage in online examinations without reliance on centralized servers or intermediaries.

---

## Vision of the Project
The project aims to revolutionize the online education and examination ecosystem by:
1. **Promoting Decentralization**: Removing the dependency on centralized platforms to ensure fairness and accessibility for all users.
2. **Ensuring Transparency**: Utilizing blockchain’s immutable ledger to record all exam activities, making them tamper-proof.
3. **Enhancing Security**: Protecting exam data and submissions from unauthorized modifications.
4. **Fostering Global Accessibility**: Enabling seamless creation and participation in exams worldwide.

---

## Future Goals of the Project
1. **Answer Storage and Verification**:
   - Allow users to submit detailed answers and store them securely on-chain.
   - Implement tools for automatic or manual answer validation.

2. **Grading System**:
   - Develop mechanisms for automated grading of objective-type questions.
   - Support subjective grading with teacher/admin feedback.

3. **Access Control**:
   - Add role-based permissions to restrict access to exam participation and grading.

4. **Certificate Issuance**:
   - Introduce blockchain-verified digital certificates for participants who successfully complete exams.

5. **Event Logging**:
   - Implement detailed event logging to track the history of exam creation, submissions, and results.

6. **Reward Mechanism**:
   - Introduce tokenized rewards for exam completion or high performance, incentivizing learning and participation.

7. **Analytics and Reporting**:
   - Provide educators with detailed analytics on participant performance and engagement.

---

## Deployed Address of the Project
The smart contract is deployed on the Aptos blockchain at the following address:

**`0xYourAddress`**

*Replace `0xYourAddress` with the actual address after deployment.*

---

## Smart Contract Overview

### Struct: `Exam`
Represents an exam resource on the blockchain.
- **Fields**:
  - `title`: The title of the exam as a `vector<u8>`.
  - `creator`: The blockchain address of the exam creator.
  - `total_submissions`: A counter to track the number of submissions received for the exam.

### Functions

#### `create_exam`
- **Purpose**: Allows a user to create a new exam and store it in their account.
- **Parameters**:
  - `creator: &signer`: The signer who creates the exam.
  - `title: vector<u8>`: The title of the exam.
- **Behavior**: Initializes a new `Exam` resource and transfers it to the creator’s account.

#### `submit_answer`
- **Purpose**: Allows users to submit answers to a specific exam.
- **Parameters**:
  - `submitter: &signer`: The signer submitting the answer.
  - `exam_owner: address`: The address of the exam creator.
- **Behavior**:
  - Checks if the exam exists.
  - Increments the `total_submissions` count for the specified exam.

---

## How to Deploy and Use


 

contract_address = `0x291c4877391655536763393ec15f888ef794677d8bd868a3eb4cd777eb6c9825`

## Conclusion
The **Decentralized Online Exam Platform** is a foundational step towards transforming online education using blockchain technology. Its simple and scalable design lays the groundwork for future enhancements, including answer grading, certification, and analytics. By decentralizing exam management, the platform aims to create a fair and transparent environment for both educators and participants.  
