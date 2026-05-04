import 'package:flutter/material.dart';
import '../models/pokemon.dart';

class DetailScreen extends StatelessWidget {
  final Pokemon pokemon;

  const DetailScreen({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF303943)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Column(
          children: [
            Text(
              pokemon.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF303943),
              ),
            ),
            Text(
              pokemon.id,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: Color(pokemon.color),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Image.asset(
                    pokemon.image,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Tags (Type & Ability)
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  _buildTag('Type: ${pokemon.type}', Color(pokemon.color)),
                  _buildTag('Ability: ${pokemon.ability}', Colors.grey.shade300),
                ],
              ),
              const SizedBox(height: 24),
              
              // Description
              Text(
                pokemon.description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  height: 1.5,
                ),
              ),

              _buildSectionTitle('Base Stats'),
              _buildStatRow('HP', pokemon.hp),
              _buildStatRow('Attack', pokemon.atk),
              _buildStatRow('Defense', pokemon.def),
              _buildStatRow('Sp. Atk', pokemon.spAtk),
              _buildStatRow('Sp. Def', pokemon.spDef),
              _buildStatRow('Speed', pokemon.speed),

              _buildSectionTitle('Weakness'),
              Text(
                pokemon.weakness,
                style: const TextStyle(fontSize: 14, color: Colors.grey, height: 1.5),
              ),

              _buildSectionTitle('Role'),
              Text(
                pokemon.role,
                style: const TextStyle(fontSize: 14, color: Colors.grey, height: 1.5),
              ),

              _buildSectionTitle('Best Partner'),
              Text(
                pokemon.partner,
                style: const TextStyle(fontSize: 14, color: Colors.grey, height: 1.5),
              ),

              _buildSectionTitle('Evolution'),
              Text(
                '${pokemon.name} evolves into ${pokemon.evolution}.',
                style: const TextStyle(fontSize: 14, color: Colors.grey, height: 1.5),
              ),

              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xFF303943),
        ),
      ),
    );
  }

  Widget _buildStatRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF303943)),
          ),
        ],
      ),
    );
  }

  Widget _buildTag(String text, Color bgColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: bgColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          color: Color(0xFF303943),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
