import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://xtktuquzhpvahtbhqghq.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh0a3R1cXV6aHB2YWh0YmhxZ2hxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA4MTU4MTAsImV4cCI6MjAyNjM5MTgxMH0.3TNT3EgM_0-9X6ihzZrzfucrzSNkQBf7hfGRLCSmOj4';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
