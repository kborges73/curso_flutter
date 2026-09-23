import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Aplicação Incrível'),
        backgroundColor: Colors.blueAccent,
        titleTextStyle: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
       ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.grey[100], // Uma cor de fundo suave
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [        
            Row(
                mainAxisAlignment: MainAxisAlignment.start, //coloca os elementos no início da linha
                crossAxisAlignment: CrossAxisAlignment.center, //alinha os elementos no centro verticalmente
                children: [
                    const Icon(
                      Icons.account_circle,
                      size: 50.0,
                      color: Colors.blueAccent,
                    ),
                    const SizedBox(width: 12.0), // Dá um pequeno espaço horizontal
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Maria Silva',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Desenvolvedora Flutter',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                ]  
              )
          ]
        )
      )
    );
  }
}
          
          
//           children: [        
//             Row(
//               mainAxisAlignment: MainAxisAlignment
//                   .start, //deixa espaços iguais entre os elementos
//               crossAxisAlignment:
//                   CrossAxisAlignment.center, //alinha os elementos no topo
//               children: [
//                     const Icon(
//                       Icons.account_circle,
//                       size: 50.0,
//                       color: Colors.blueAccent,
//                     ),
//                     const SizedBox(width: 12.0), // Dá um pequeno espaço horizontal
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: const [
//                         Text(
//                           'Maria Silva',
//                           style: TextStyle(
//                             fontSize: 18.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           'Desenvolvedora Flutter',
//                           style: TextStyle(color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//         ),
//     );
//   }
// }
