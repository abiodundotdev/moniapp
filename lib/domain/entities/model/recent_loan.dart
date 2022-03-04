class RecentLoan {
  RecentLoan({
    required this.id,
    required this.userId,
    required this.agentId,
    required this.clusterId,
    required this.statusId,
    required this.acceptedAt,
    required this.createdAt,
    required this.agent,
  });

  final String id;
  final String userId;
  final String agentId;
  final String clusterId;
  final int statusId;
  final DateTime acceptedAt;
  final DateTime createdAt;
  final Agent agent;

  factory RecentLoan.fromJson(Map<String, dynamic> json) => RecentLoan(
        id: json["id"],
        userId: json["user_id"],
        agentId: json["agent_id"],
        clusterId: json["cluster_id"],
        statusId: json["status_id"],
        acceptedAt: DateTime.parse(json["accepted_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        agent: Agent.fromJson(json["agent"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "agent_id": agentId,
        "cluster_id": clusterId,
        "status_id": statusId,
        "accepted_at": acceptedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "agent": agent.toJson(),
      };
}

class Agent {
  Agent({
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
    required this.recentLoan,
    required this.suspended,
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
  final RecentLoanClass recentLoan;
  final bool suspended;

  factory Agent.fromJson(Map<String, dynamic> json) => Agent(
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
        recentLoan: RecentLoanClass.fromJson(json["recent_loan"]),
        suspended: json["suspended"],
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
        "recent_loan": recentLoan.toJson(),
        "suspended": suspended,
      };
}

class RecentLoanClass {
  RecentLoanClass({
    required this.id,
    required this.agentId,
    required this.clusterId,
    required this.agentLoanId,
    required this.loanAmount,
    required this.createdAt,
    required this.agentLoan,
  });

  final String id;
  final String agentId;
  final String clusterId;
  final String agentLoanId;
  final int loanAmount;
  final DateTime createdAt;
  final AgentLoan agentLoan;

  factory RecentLoanClass.fromJson(Map<String, dynamic> json) =>
      RecentLoanClass(
        id: json["id"],
        agentId: json["agent_id"],
        clusterId: json["cluster_id"],
        agentLoanId: json["agent_loan_id"],
        loanAmount: json["loan_amount"],
        createdAt: DateTime.parse(json["created_at"]),
        agentLoan: AgentLoan.fromJson(json["agent_loan"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "agent_id": agentId,
        "cluster_id": clusterId,
        "agent_loan_id": agentLoanId,
        "loan_amount": loanAmount,
        "created_at": createdAt.toIso8601String(),
        "agent_loan": agentLoan.toJson(),
      };
}

class AgentLoan {
  AgentLoan({
    required this.id,
    required this.agentId,
    required this.agentCreditScoreId,
    required this.loanId,
    required this.agentCardId,
    required this.interestType,
    required this.interestValue,
    required this.loanDurationType,
    required this.loanDuration,
    required this.loanDueDate,
    required this.daysPastDue,
    required this.loanAmount,
    required this.loanAmountDue,
    required this.loanInterestDue,
    required this.loanPaymentDate,
    required this.loanPaymentRate,
    required this.loanAmountPaid,
    required this.penaltyOutstanding,
    required this.penaltyPaid,
    required this.principalPaid,
    required this.principalOutstanding,
    required this.interestPaid,
    required this.interestOutstanding,
    required this.penaltyAmount,
    required this.loanStatus,
    required this.isMax,
    required this.statusId,
    required this.acceptTerms,
    required this.createdAt,
    required this.modifiedAt,
    required this.status,
  });

  final String id;
  final String agentId;
  final String agentCreditScoreId;
  final String loanId;
  final String agentCardId;
  final String interestType;
  final double interestValue;
  final String loanDurationType;
  final int loanDuration;
  final DateTime loanDueDate;
  final dynamic daysPastDue;
  final int loanAmount;
  final int loanAmountDue;
  final int loanInterestDue;
  final dynamic loanPaymentDate;
  final dynamic loanPaymentRate;
  final int loanAmountPaid;
  final int penaltyOutstanding;
  final int penaltyPaid;
  final int principalPaid;
  final int principalOutstanding;
  final int interestPaid;
  final int interestOutstanding;
  final int penaltyAmount;
  final Status loanStatus;
  final int isMax;
  final int statusId;
  final int acceptTerms;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final Status status;

  factory AgentLoan.fromJson(Map<String, dynamic> json) => AgentLoan(
        id: json["id"],
        agentId: json["agent_id"],
        agentCreditScoreId: json["agent_credit_score_id"],
        loanId: json["loan_id"],
        agentCardId: json["agent_card_id"],
        interestType: json["interest_type"],
        interestValue: json["interest_value"].toDouble(),
        loanDurationType: json["loan_duration_type"],
        loanDuration: json["loan_duration"],
        loanDueDate: DateTime.parse(json["loan_due_date"]),
        daysPastDue: json["days_past_due"],
        loanAmount: json["loan_amount"],
        loanAmountDue: json["loan_amount_due"],
        loanInterestDue: json["loan_interest_due"],
        loanPaymentDate: json["loan_payment_date"],
        loanPaymentRate: json["loan_payment_rate"],
        loanAmountPaid: json["loan_amount_paid"],
        penaltyOutstanding: json["penalty_outstanding"],
        penaltyPaid: json["penalty_paid"],
        principalPaid: json["principal_paid"],
        principalOutstanding: json["principal_outstanding"],
        interestPaid: json["interest_paid"],
        interestOutstanding: json["interest_outstanding"],
        penaltyAmount: json["penalty_amount"],
        loanStatus: Status.fromJson(json["loan_status"]),
        isMax: json["is_max"],
        statusId: json["status_id"],
        acceptTerms: json["accept_terms"],
        createdAt: DateTime.parse(json["created_at"]),
        modifiedAt: DateTime.parse(json["modified_at"]),
        status: Status.fromJson(json["status"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "agent_id": agentId,
        "agent_credit_score_id": agentCreditScoreId,
        "loan_id": loanId,
        "agent_card_id": agentCardId,
        "interest_type": interestType,
        "interest_value": interestValue,
        "loan_duration_type": loanDurationType,
        "loan_duration": loanDuration,
        "loan_due_date": loanDueDate.toIso8601String(),
        "days_past_due": daysPastDue,
        "loan_amount": loanAmount,
        "loan_amount_due": loanAmountDue,
        "loan_interest_due": loanInterestDue,
        "loan_payment_date": loanPaymentDate,
        "loan_payment_rate": loanPaymentRate,
        "loan_amount_paid": loanAmountPaid,
        "penalty_outstanding": penaltyOutstanding,
        "penalty_paid": penaltyPaid,
        "principal_paid": principalPaid,
        "principal_outstanding": principalOutstanding,
        "interest_paid": interestPaid,
        "interest_outstanding": interestOutstanding,
        "penalty_amount": penaltyAmount,
        "loan_status": loanStatus.toJson(),
        "is_max": isMax,
        "status_id": statusId,
        "accept_terms": acceptTerms,
        "created_at": createdAt.toIso8601String(),
        "modified_at": modifiedAt.toIso8601String(),
        "status": status.toJson(),
      };
}

class Status {
  Status({
    required this.id,
    required this.name,
    required this.label,
    required this.description,
    required this.createdAt,
    required this.modifiedAt,
  });

  final int id;
  final String name;
  final String label;
  final String description;
  final DateTime createdAt;
  final DateTime modifiedAt;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        id: json["id"],
        name: json["name"],
        label: json["label"],
        description: json["description"],
        createdAt: DateTime.parse(json["created_at"]),
        modifiedAt: DateTime.parse(json["modified_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "label": label,
        "description": description,
        "created_at": createdAt.toIso8601String(),
        "modified_at": modifiedAt.toIso8601String(),
      };
}
