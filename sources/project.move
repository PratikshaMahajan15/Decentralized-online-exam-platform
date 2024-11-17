module DecentralizedOnlineExamPlatform::OnlineExamPlatform {

    use aptos_framework::signer;

    /// Struct representing an exam.
    struct Exam has store, key {
        title: vector<u8>,           // Title of the exam
        creator: address,            // Creator of the exam
        total_submissions: u64,      // Total submissions received
    }

    /// Function to create a new exam.
    public fun create_exam(creator: &signer, title: vector<u8>) {
        let exam = Exam {
            title,
            creator: signer::address_of(creator),
            total_submissions: 0,
        };
        move_to(creator, exam);
    }

    /// Function to submit an answer for a specific exam.
    public fun submit_answer(submitter: &signer, exam_owner: address) acquires Exam {
        let exam = borrow_global_mut<Exam>(exam_owner);
        
        // Increment the total submissions count
        exam.total_submissions = exam.total_submissions + 1;
    }
}
