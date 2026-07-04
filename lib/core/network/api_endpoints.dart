class ApiEndpoints {
  ApiEndpoints._();

  // ================= Authentication =================

  static const String register = '/auth/register';
  static const String login = '/auth/login';
  static const String refreshToken = '/auth/refresh-token';
  static const String logout = '/auth/logout';

  // ================= Doctors =================

  /// Get all doctors
  static const String doctors = '/doctors';

  /// Get doctor by id
  static String doctorById(String doctorId) =>
      '/doctors/$doctorId';

  /// Get doctor profile
  static String doctorProfile(String doctorId) =>
      '/doctors/profile/$doctorId';

  /// Get doctor availability
  static String doctorAvailability(String doctorId) =>
      '/doctors/availability/$doctorId';

  // ================= Appointments =================

  /// Create appointment
  static const String appointments = '/appointments';

  /// Get appointment by id
  static String appointmentById(String appointmentId) =>
      '/appointments/$appointmentId';

  /// Cancel appointment
  static String cancelAppointment(String appointmentId) =>
      '/appointments/$appointmentId';

}