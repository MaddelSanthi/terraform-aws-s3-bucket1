module "wrapper" {
  source = "../"

  for_each = var.items

  create_bucket                         = try(each.value.create_bucket, var.defaults.create_bucket, true)
  attach_elb_log_delivery_policy        = try(each.value.attach_elb_log_delivery_policy, var.defaults.attach_elb_log_delivery_policy, false)
  attach_lb_log_delivery_policy         = try(each.value.attach_lb_log_delivery_policy, var.defaults.attach_lb_log_delivery_policy, false)
  attach_deny_insecure_transport_policy = try(each.value.attach_deny_insecure_transport_policy, var.defaults.attach_deny_insecure_transport_policy, false)
  attach_require_latest_tls_policy      = try(each.value.attach_require_latest_tls_policy, var.defaults.attach_require_latest_tls_policy, false)
  attach_policy                         = try(each.value.attach_policy, var.defaults.attach_policy, false)
  attach_public_policy                  = try(each.value.attach_public_policy, var.defaults.attach_public_policy, true)
  bucket                                = try(each.value.bucket, var.defaults.bucket, null)
  bucket_prefix                         = try(each.value.bucket_prefix, var.defaults.bucket_prefix, null)
  acl                                   = try(each.value.acl, var.defaults.acl, null)
  policy                                = try(each.value.policy, var.defaults.policy, null)
  tags                                  = try(each.value.tags, var.defaults.tags, {})
  force_destroy                         = try(each.value.force_destroy, var.defaults.force_destroy, false)
  acceleration_status                   = try(each.value.acceleration_status, var.defaults.acceleration_status, null)
  request_payer                         = try(each.value.request_payer, var.defaults.request_payer, null)
  website                               = try(each.value.website, var.defaults.website, {})
  cors_rule                             = try(each.value.cors_rule, var.defaults.cors_rule, [])
  versioning                            = try(each.value.versioning, var.defaults.versioning, {})
  logging                               = try(each.value.logging, var.defaults.logging, {})
  grant                                 = try(each.value.grant, var.defaults.grant, [])
  owner                                 = try(each.value.owner, var.defaults.owner, {})
  expected_bucket_owner                 = try(each.value.expected_bucket_owner, var.defaults.expected_bucket_owner, null)
  lifecycle_rule                        = try(each.value.lifecycle_rule, var.defaults.lifecycle_rule, [])
  replication_configuration             = try(each.value.replication_configuration, var.defaults.replication_configuration, {})
  server_side_encryption_configuration  = try(each.value.server_side_encryption_configuration, var.defaults.server_side_encryption_configuration, {})
  object_lock_configuration             = try(each.value.object_lock_configuration, var.defaults.object_lock_configuration, {})
  object_lock_enabled                   = try(each.value.object_lock_enabled, var.defaults.object_lock_enabled, false)
  block_public_acls                     = try(each.value.block_public_acls, var.defaults.block_public_acls, false)
  block_public_policy                   = try(each.value.block_public_policy, var.defaults.block_public_policy, false)
  ignore_public_acls                    = try(each.value.ignore_public_acls, var.defaults.ignore_public_acls, false)
  restrict_public_buckets               = try(each.value.restrict_public_buckets, var.defaults.restrict_public_buckets, false)
  control_object_ownership              = try(each.value.control_object_ownership, var.defaults.control_object_ownership, false)
  object_ownership                      = try(each.value.object_ownership, var.defaults.object_ownership, "ObjectWriter")
  putin_khuylo                          = try(each.value.putin_khuylo, var.defaults.putin_khuylo, true)
}
