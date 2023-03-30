part of ciniphile;



class HomeCard extends StatelessWidget {
  const HomeCard({Key? key, required this.imag, required this.text,required this.height,required this.bannerColr})
      : super(key: key);
  final String text;
  final String imag;
  final double height;
  final Color bannerColr;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Card(
        borderOnForeground: true,
        elevation: 3,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: bannerColr,
                boxShadow: [
                  BoxShadow(blurRadius: 5, color: Colors.white),
                  BoxShadow(blurRadius: 5, color:Colors.black )
                ],
              ),
              height: height * 0.05,
              width: 140,
              child: Center(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  text,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.28,
              width: 140,
              child: imag == 'null'
                  ? const Text(
                      'image not available',
                      style: TextStyle(color: Colors.red),
                    )
                  : Image.network(
                      imag,
                      // '${BaseUrl().baseurl}3$imag'

                      fit: BoxFit.scaleDown,
                    ),
            )
          ],
        ),
      ),
    );
  }
}
