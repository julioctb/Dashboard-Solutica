
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {

  static final supabase = Supabase.instance.client;

  static Future<void> initializer() async {
    await Supabase.initialize(
    url: 'https://rqiilrzthybrrxpoyzvu.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJxaWlscnp0aHlicnJ4cG95enZ1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzkxMDkzMzEsImV4cCI6MTk5NDY4NTMzMX0.4oGqdcvrRSvqPYoQm6lWZzLebEc7WJHpDIvLrv8bONA',
  );}


}