import 'package:form_validation_app/models/credential_model.dart';
import 'package:lucid_validation/lucid_validation.dart';

class CredentialValidator extends LucidValidator<CredentialModel> {
  CredentialValidator() {
    ruleFor((model) => model.email, key: 'email') //
        .validEmail();
    ruleFor((model) => model.password, key: 'password') //
        .mustHaveLowercase()
        .minLength(8)
        .notEmpty()
        .mustHaveNumber()
        .mustHaveSpecialCharacter()
        .mustHaveUppercase();
  }
}
