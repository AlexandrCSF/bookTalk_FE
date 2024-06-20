import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/models/club_meeting.dart';
import 'package:booktalk_frontend/models/meeting.dart';
import 'package:booktalk_frontend/pages/widgets/picker_button.dart';
import 'package:booktalk_frontend/pages/widgets/textfield_widget.dart';
import 'package:booktalk_frontend/utils/navigation/app_router.dart';
import 'package:booktalk_frontend/utils/string_formatting.dart';
import 'package:booktalk_frontend/viewmodels/edit_event_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import '../widgets/main_primary_button.dart';

@RoutePage()
class EditEventPage extends StatefulWidget {
  final ClubMeeting meeting;

  const EditEventPage({
    super.key,
    required this.meeting,
  });

  @override
  State<EditEventPage> createState() => _EditEventPageState();
}

class _EditEventPageState extends State<EditEventPage> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return ChangeNotifierProvider<EditEventViewModel>(
      create: (BuildContext context) =>
          EditEventViewModel(initialMeeting: widget.meeting)..initEditEvent(),
      child: Consumer<EditEventViewModel>(
        builder: (context, provider, child) {
          return Scaffold(
            appBar: AppBar(
              surfaceTintColor: colors.background,
              leading: AutoLeadingButton(
                color: colors.primary,
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: IconButton(
                    onPressed: () {
                      provider.deleteEvent();
                      context.router.maybePop();
                    },
                    icon: Icon(MdiIcons.trashCanOutline),
                    color: colors.primary,
                  ),
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      TextFieldWidget(
                        label: 'Тема мероприятия',
                        hintText: 'Введите тему',
                        maxLines: 1,
                        controller: provider.topicController,
                      ),
                      PickerButton(
                        label: 'Дата',
                        value: StringFormatting.getFormattedDateFromDate(
                            provider.selectedDate),
                        icon: MdiIcons.calendar,
                        onTap: () {
                          showDatePicker(
                            context: context,
                            initialDate: provider.selectedDate,
                            firstDate: DateTime(2002),
                            lastDate: DateTime(2100),
                          ).then((value) {
                            if (value != null) {
                              provider.setDate(value);
                            }
                          });
                        },
                      ),
                      PickerButton(
                        label: 'Время',
                        value: StringFormatting.getFormattedTimeFromTime(
                            provider.selectedTime),
                        icon: MdiIcons.clock,
                        onTap: () {
                          showTimePicker(
                            context: context,
                            initialTime: provider.selectedTime,
                          ).then((value) {
                            if (value != null) {
                              provider.setTime(value);
                            }
                          });
                        },
                      ),
                      TextFieldWidget(
                        label: 'Место',
                        hintText: 'Введите место',
                        maxLines: 1,
                        controller: provider.placeController,
                      ),
                      if (provider.errorMessage.isNotEmpty)
                        Text(
                          provider.errorMessage,
                          style: text.labelMedium?.copyWith(
                            color: colors.onError,
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: MainPrimaryButton(
                          label: 'Добавить',
                          icon: MdiIcons.check,
                          onTap: () {
                            provider.editEvent();
                            context.router.maybePop();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
