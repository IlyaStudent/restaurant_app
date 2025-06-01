library;

import 'package:auto_route/auto_route.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/core/di/dependencies.dart';
import 'package:restaurant_app/core/routes/app_router.gr.dart';
import 'package:restaurant_app/core/styles/app_colors.dart';
import 'package:restaurant_app/core/utils/api_response_state/api_response_state.dart';
import 'package:restaurant_app/core/utils/state_controller/state_controller.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/core/widgets/app_image.dart';
import 'package:restaurant_app/core/widgets/widgets.dart';

// routes
part 'presentation/menu_routes.dart';

// bloc
part 'bloc/meals_cubit/meal_categories_cubit.dart';

// screens
part 'presentation/screens/meal_categories_screen.dart';
part 'presentation/screens/meal_by_category_screen.dart';

// widgets
part 'presentation/widgets/meal_categories_screen/meal_categories_screen_body_widget.dart';
part 'presentation/widgets/meal_categories_screen/meal_category_widget.dart';
