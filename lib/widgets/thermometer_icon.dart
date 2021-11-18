import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThermometerIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(size: 99.0, start: 0.0),
          Pin(size: 111.0, end: 0.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              color: const Color(0xffc32424),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 59.0, middle: 0.3053),
          Pin(size: 65.0, start: 0.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              color: const Color(0xffc32424),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 1.0, start: 20.5),
          Pin(start: 25.5, end: 19.5),
          child: SvgPicture.string(
            _svg_qm8x7,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 1.0, middle: 0.6316),
          Pin(start: 25.5, end: 9.5),
          child: SvgPicture.string(
            _svg_d7hnu3,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 1.0, middle: 0.2308),
          Pin(size: 23.0, end: 9.5),
          child: SvgPicture.string(
            _svg_u55927,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 58.0, middle: 0.3008),
          Pin(size: 163.0, start: 33.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xffc32424),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 40.0, end: 0.0),
          Pin(size: 1.0, start: 36.5),
          child: SvgPicture.string(
            _svg_nlpssz,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 40.0, end: 0.0),
          Pin(size: 1.0, start: 36.5),
          child: SvgPicture.string(
            _svg_nlpssz,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 40.0, end: 0.0),
          Pin(size: 1.0, middle: 0.2309),
          child: SvgPicture.string(
            _svg_qq0kml,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 40.0, end: 0.0),
          Pin(size: 1.0, middle: 0.3218),
          child: SvgPicture.string(
            _svg_raqc31,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 1.0, middle: 0.4008),
          Pin(size: 155.0, middle: 0.5413),
          child: SvgPicture.string(
            _svg_ni96zr,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 26.0, middle: 0.3756),
          Pin(size: 33.0, end: 38.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              color: const Color(0xffffec05),
            ),
          ),
        ),
      ],
    );
  }
}

const String _svg_qm8x7 =
    '<svg viewBox="20.5 25.5 1.0 231.0" ><path transform="translate(20.5, 25.5)" d="M 0 0 L 0 231" fill="none" stroke="#c32424" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_d7hnu3 =
    '<svg viewBox="78.0 25.5 1.0 241.0" ><path transform="translate(78.0, 25.5)" d="M 0 0 L 0 241" fill="none" stroke="#c32424" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u55927 =
    '<svg viewBox="28.5 243.5 1.0 23.0" ><path transform="translate(28.5, 243.5)" d="M 0 23 L 0 0" fill="none" stroke="#c32424" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nlpssz =
    '<svg viewBox="84.5 36.5 40.0 1.0" ><path transform="translate(84.5, 36.5)" d="M 0 0 L 40 0" fill="none" stroke="#c32424" stroke-width="10" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qq0kml =
    '<svg viewBox="84.5 63.5 40.0 1.0" ><path transform="translate(84.5, 63.5)" d="M 0 0 L 40 0" fill="none" stroke="#c32424" stroke-width="10" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_raqc31 =
    '<svg viewBox="84.5 88.5 40.0 1.0" ><path transform="translate(84.5, 88.5)" d="M 0 0 L 40 0" fill="none" stroke="#c32424" stroke-width="10" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ni96zr =
    '<svg viewBox="49.5 65.5 1.0 155.0" ><path transform="translate(49.5, 65.5)" d="M 0 0 L 0 155" fill="none" stroke="#f7f702" stroke-width="5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
