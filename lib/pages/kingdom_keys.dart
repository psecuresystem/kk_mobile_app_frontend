import 'package:flutter/material.dart';

class KingdomKeys extends StatefulWidget {
  const KingdomKeys({Key? key}) : super(key: key);

  @override
  State<KingdomKeys> createState() => _KingdomKeysState();
}

class _KingdomKeysState extends State<KingdomKeys> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kingdom Keys',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 28.0,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/calendar");
          },
          icon: const Icon(
            Icons.calendar_month,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/test");
            },
            icon: const Icon(
              Icons.list,
              color: Colors.black,
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/img.png',
                    height: 121.0,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            // SizedBox(height: 121.0),
            const SizedBox(height: 32.0),
            const Center(
              child: Text(
                'Living the El life',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos ipsum odit facere beatae velit natus dicta molestias et? Exercitationem alias voluptatum facilis placeat qui voluptate veritatis consectetur, beatae a nostrum, animi rem dolorum eos repellendus est. Saepe, mollitia? Explicabo ea dignissimos, fugit animi vero velit quidem! Aspernatur eius aperiam veritatis ut fugit hic assumenda harum numquam minus reiciendis officiis dignissimos voluptatum distinctio voluptates, molestias magni recusandae earum! Eum, soluta itaque possimus magni dolore voluptatum vitae laborum odit, temporibus nesciunt quasi placeat aliquid non quisquam facere excepturi id qui. Libero repellendus impedit pariatur numquam iusto expedita in sequi velit provident nostrum!',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                  fontFamily: 'Inter',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
