import 'package:application_core/auth/auth_cubit.dart';
import 'package:dependencies_core/dependencies_core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:ui_core/ui_core.dart';

class TokioDrawer extends StatefulWidget {
  const TokioDrawer({
    super.key,
    required this.scaffoldKey,
    required this.user,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;
  final UserAccount user;

  @override
  State<TokioDrawer> createState() => _TokioDrawerState();
}

class _TokioDrawerState extends State<TokioDrawer> {
  void _onItemTap(VoidCallback? action) {
    widget.scaffoldKey.currentState?.closeDrawer();
    if (action != null) action();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 320,
      child: Container(
        color: AppColors.offBlack,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 16, 32),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      child: Icon(
                        Icons.person,
                        size: 32,
                        color: AppColors.tokioBlack,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Oi, ${widget.user.name}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 4),
                        const Text('Minha conta',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 14)),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    _buildTile(
                      icon: Icons.home_outlined,
                      label: 'Home / Seguro',
                      onTap: () => _onItemTap(() {}),
                    ),
                    _buildTile(
                      icon: Icons.assignment_outlined,
                      label: 'Minhas Contratações',
                      onTap: () => _onItemTap(() {}),
                    ),
                    _buildTile(
                      icon: Icons.report_problem_outlined,
                      label: 'Meus Sinistros',
                      onTap: () => _onItemTap(() {}),
                    ),
                    _buildTile(
                      icon: Icons.family_restroom_outlined,
                      label: 'Minha Família',
                      onTap: () => _onItemTap(() {}),
                    ),
                    _buildTile(
                      icon: Icons.home_work_outlined,
                      label: 'Meus Bens',
                      onTap: () => _onItemTap(() {}),
                    ),
                    _buildTile(
                      icon: Icons.payment_outlined,
                      label: 'Pagamentos',
                      onTap: () => _onItemTap(() {}),
                    ),
                    _buildTile(
                      icon: Icons.store_mall_directory_outlined,
                      label: 'Corretoras',
                      onTap: () => _onItemTap(() {}),
                    ),
                    _buildTile(
                      icon: Icons.rule_folder_outlined,
                      label: 'Validar Boleto',
                      onTap: () => _onItemTap(() {}),
                    ),
                    _buildTile(
                      icon: Icons.phone_in_talk_outlined,
                      label: 'Telefones importantes',
                      onTap: () => _onItemTap(() {}),
                    ),
                    _buildTile(
                      icon: Icons.settings_outlined,
                      label: 'Configurações',
                      onTap: () => _onItemTap(() {}),
                    ),
                    _buildTile(
                      icon: Icons.logout,
                      label: 'logout',
                      onTap: () => _onItemTap(() async {
                        await context.read<AuthCubit>().signOut();
                      }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTile({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: AppColors.accentYellow),
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Text(label, style: const TextStyle(color: Colors.white)),
      ),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      horizontalTitleGap: 0,
      dense: true,
    );
  }
}
