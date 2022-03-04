class AgentModel {
  AgentModel({
    required this.id,
    required this.userId,
    required this.moniId,
    required this.eligibleLoanId,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.nickname,
    required this.birthDate,
    required this.gender,
    required this.businessName,
    required this.maritalStatus,
    required this.education,
    required this.houseAddress,
    required this.shopAddress,
    required this.lga,
    required this.city,
    required this.state,
    required this.country,
    required this.phoneNumber,
    required this.emailAddress,
    required this.bvn,
    required this.hasCreditHistory,
    required this.verified,
    required this.referralLink,
    required this.mediaUrl,
    required this.channel,
    required this.agentRepaymentRate,
    required this.bvnVerifiedAfter,
    required this.loanEnabled,
    required this.statusId,
    required this.eligibleLoanModifiedAt,
    required this.createdAt,
    required this.modifiedAt,
    required this.capAgentLoan,
    required this.loanCount,
  });

  final String id;
  final String userId;
  final dynamic moniId;
  final String eligibleLoanId;
  final String firstName;
  final dynamic middleName;
  final String lastName;
  final String nickname;
  final DateTime birthDate;
  final String gender;
  final String businessName;
  final String maritalStatus;
  final String education;
  final String houseAddress;
  final String shopAddress;
  final String lga;
  final String city;
  final String state;
  final dynamic country;
  final String phoneNumber;
  final String emailAddress;
  final String bvn;
  final int hasCreditHistory;
  final int verified;
  final String referralLink;
  final dynamic mediaUrl;
  final String channel;
  final int agentRepaymentRate;
  final int bvnVerifiedAfter;
  final int loanEnabled;
  final int statusId;
  final DateTime eligibleLoanModifiedAt;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final int capAgentLoan;
  final int loanCount;

  factory AgentModel.fromJson(Map<String, dynamic> json) => AgentModel(
        id: json["id"],
        userId: json["user_id"],
        moniId: json["moni_id"],
        eligibleLoanId: json["eligible_loan_id"],
        firstName: json["first_name"],
        middleName: json["middle_name"],
        lastName: json["last_name"],
        nickname: json["nickname"],
        birthDate: DateTime.parse(json["birth_date"]),
        gender: json["gender"],
        businessName: json["business_name"],
        maritalStatus: json["marital_status"],
        education: json["education"],
        houseAddress: json["house_address"],
        shopAddress: json["shop_address"],
        lga: json["lga"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        phoneNumber: json["phone_number"],
        emailAddress: json["email_address"],
        bvn: json["bvn"],
        hasCreditHistory: json["has_credit_history"],
        verified: json["verified"],
        referralLink: json["referral_link"],
        mediaUrl: json["media_url"],
        channel: json["channel"],
        agentRepaymentRate: json["agent_repayment_rate"],
        bvnVerifiedAfter: json["bvn_verified_after"],
        loanEnabled: json["loan_enabled"],
        statusId: json["status_id"],
        eligibleLoanModifiedAt:
            DateTime.parse(json["eligible_loan_modified_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        modifiedAt: DateTime.parse(json["modified_at"]),
        capAgentLoan: json["cap_agent_loan"],
        loanCount: json["loan_count"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "moni_id": moniId,
        "eligible_loan_id": eligibleLoanId,
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "nickname": nickname,
        "birth_date": birthDate.toIso8601String(),
        "gender": gender,
        "business_name": businessName,
        "marital_status": maritalStatus,
        "education": education,
        "house_address": houseAddress,
        "shop_address": shopAddress,
        "lga": lga,
        "city": city,
        "state": state,
        "country": country,
        "phone_number": phoneNumber,
        "email_address": emailAddress,
        "bvn": bvn,
        "has_credit_history": hasCreditHistory,
        "verified": verified,
        "referral_link": referralLink,
        "media_url": mediaUrl,
        "channel": channel,
        "agent_repayment_rate": agentRepaymentRate,
        "bvn_verified_after": bvnVerifiedAfter,
        "loan_enabled": loanEnabled,
        "status_id": statusId,
        "eligible_loan_modified_at": eligibleLoanModifiedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "modified_at": modifiedAt.toIso8601String(),
        "cap_agent_loan": capAgentLoan,
        "loan_count": loanCount,
      };
}
