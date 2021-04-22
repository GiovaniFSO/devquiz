import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            child: Stack(
              children: [
                Container(
                  height: 161,
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(gradient: AppGradients.linear),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(TextSpan(
                          text: "Olá, ",
                          style: AppTextStyles.title,
                          children: [
                            TextSpan(
                              text: "Giovani",
                              style: AppTextStyles.titleBold,
                            )
                          ])),
                      Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://lh3.googleusercontent.com/fife/ABSRlIqVkJGeEEs8HnzkOYnNj03lG3V-a9Gj-n6iri_Oam98ryHPXafrVjgjogqlvlMRD8NkoeJNIPje0TveAN6s58A0ovClbFAlLBI73MXkGgQBkp1OwQ3nStZFbaJ9ItIEFN-SeTFGxFd7n_SEpFYKcTCM-oZ6oHI7j0gWfmWreXk5qB46fFDZqJvWQEphHBLg8jEuzqN-r6-JECkZDdHlhNrJdWTn1zE09Ex188Utb3earzvQRIW2bNj-7d02mhitFumNG-6lGJg6_p6MbGSMAUl7CSy_PFiwVqENFr677jXbCZ8D4EvS9WMJncX_4LyTVw7kMM2hA5Pq8fD1dkCDc5gf_SlbvjcLtaaRFrn_vcRgZjcqLqejm69EYY0ajSBH9Lve0qdYW7TTO29J5Kp8EyXm2TmFym_qW65k92owDqi2qMw67zpOcaGFIx8qbLKnmBZUCrzy1m2V4fj2dS5YC301k3SdtN5JMgEwsgjVzFTGmMG__6huF1HtZSxK9__8t-jgk9Vpr4hZNtILvubxPjpr9gbKO0aK9dAaKWqyxRXK1QReRG5T3S3I3HY_I5DInhSfzeya-HjuOkDtWC09trzCreIFLbO1SpZphW2RHjIfrT422cBZHuKAXXDIHEty7YHD2FfHkP7BHx5CQQuDDZqdeermEwBD86GkC6KlzjgJfV5nfj0Z2A0VtIM6CQ1MvgUnCQuE0MGbXpqohyN1CJZQVHfZ7BQpJFHKjkdtL7QBOA=s83-c"))),
                      )
                    ],
                  ),
                ),
                Align(alignment: Alignment(0.0, 1.0), child: ScoreCardWidget())
              ],
            ),
          ),
        );
}
