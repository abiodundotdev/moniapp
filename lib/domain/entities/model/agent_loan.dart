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
  final LoanStatus loanStatus;

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
        loanStatus: LoanStatus.fromJson(json["loan_status"]),
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
      };
}

class LoanStatus {
  LoanStatus({
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

  factory LoanStatus.fromJson(Map<String, dynamic> json) => LoanStatus(
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
